#!/bin/sh

set -eux
SELF="$$"
touch deltaVersionId.txt
touch fullVersionId.txt
touch state.txt
state="$(cat state.txt)"
while
    case "$state" in
        "delta2pg" )
            find /usr/local/delta2pg -type f -name "*.sh" | sort -u | while read -r SH; do
                TABLE="$(basename -- "${SH%.*}")"
                find -mindepth 1 -maxdepth 1 -type d | sort -u | while read -r DIR; do
                    find "$DIR" -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV bash "$SH" "CSV"
                    test $? -eq 0 || kill -SIGINT "$SELF"
                    rmdir "$DIR"/* "$DIR"
                done
            done
            echo update >state.txt
        ;;
        "full2pg" )
            find /usr/local/full2pg -type f -name "*.sh" | sort -u | while read -r SH; do
                TABLE="$(basename -- "${SH%.*}")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV bash "$SH" "CSV"
                test $? -eq 0 || kill -SIGINT "$SELF"
            done
            echo insert >state.txt
        ;;
        "insert" )
            find /usr/local/insert -type f -name "*.sh" | sort -u | while read -r SH; do
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=REGION bash "$SH" "REGION"
                test $? -eq 0 || kill -SIGINT "$SELF"
            done
            echo "done" >state.txt
        ;;
        "region2pg" )
            seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --replace=REGION echo "CREATE SCHEMA IF NOT EXISTS \"REGION\";" | psql --variable=ON_ERROR_STOP=1
            test $? -eq 0 || kill -SIGINT "$SELF"
            find /usr/local/region2pg -type f -name "*.sh" | sort -u | while read -r SH; do
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --replace=REGION sh "$SH" "REGION" | psql --variable=ON_ERROR_STOP=1
                test $? -eq 0 || kill -SIGINT "$SELF"
            done
            echo wget >fullVersionId.txt
            echo wget >state.txt
        ;;
        "sql2pg" )
            find /usr/local/sql2pg -type f -name "*.sql" | sort -u | xargs --verbose --no-run-if-empty --replace=SQL cat "SQL" | psql --variable=ON_ERROR_STOP=1
            test $? -eq 0 || kill -SIGINT "$SELF"
            echo region2pg >state.txt
        ;;
        "unzip" )
            find . -type f -name "*.zip" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=ZIP bash /usr/local/bin/unzip.sh "ZIP"
            test $? -eq 0 || kill -SIGINT "$SELF"
            echo xml2csv >state.txt
        ;;
        "update" )
            find /usr/local/update -type f -name "*.sh" | sort -u | while read -r SH; do
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=REGION bash "$SH" "REGION"
                test $? -eq 0 || kill -SIGINT "$SELF"
            done
            echo insert >state.txt
        ;;
        "xml2csv" )
            find /usr/local/xml2csv -type f -name "*.sh" | sort -u | while read -r SH; do
                TABLE="$(basename -- "${SH%.*}")"
                find . -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=XML bash "$SH" "XML"
                test $? -eq 0 || kill -SIGINT "$SELF"
            done
            deltaVersionId="$(cat deltaVersionId.txt)"
            fullVersionId="$(cat fullVersionId.txt)"
            if [ "$deltaVersionId" != "$fullVersionId" ]; then
                echo delta2pg >state.txt
            else
                echo full2pg >state.txt
            fi
        ;;
        * )
            echo "done" >state.txt
            deltaVersionId="$(cat deltaVersionId.txt)"
            fullVersionId="$(cat fullVersionId.txt)"
            if [ -z "$fullVersionId" ]; then
                echo sql2pg >state.txt
            elif [ -z "$deltaVersionId" ]; then
                wget --output-document=GetLastDownloadFileInfo.json https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
                lastVersionId="$(jq --raw-output .VersionId <GetLastDownloadFileInfo.json)"
                URL="$(jq --raw-output .GarXMLFullURL <GetLastDownloadFileInfo.json)"
                ZIP="$lastVersionId.zip"
                wget --continue --output-document="$ZIP" "$URL"
                echo "$lastVersionId" >deltaVersionId.txt
                echo "$lastVersionId" >fullVersionId.txt
            else
                wget --output-document=GetAllDownloadFileInfo.json https://fias.nalog.ru/WebServices/Public/GetAllDownloadFileInfo
                jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | .GarXMLDeltaURL" <GetAllDownloadFileInfo.json | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=URL bash /usr/local/bin/wget.sh "URL"
                test $? -eq 0 || kill -SIGINT "$SELF"
                jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | .GarXMLDeltaURL" <GetAllDownloadFileInfo.json | xargs --verbose --no-run-if-empty --replace=URL bash /usr/local/bin/version.sh "URL"
                test $? -eq 0 || kill -SIGINT "$SELF"
            fi
        ;;
    esac
    state="$(cat state.txt)"
    test "$state" != "done"
do true; done 2>&1 | tee cron.log
