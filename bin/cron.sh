#!/bin/sh

set -eux
touch deltaVersionId.txt
touch fullVersionId.txt
touch state.txt
state="$(cat state.txt)"
while
    set -eux
    case "$state" in
        "delta2pg" )
            find /usr/local/delta2pg -type f -name "*.sh" | sort -u | while read -r SH; do
                set -eux
                TABLE="$(basename -- "${SH%.*}")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV bash "$SH" "CSV"
            done
            echo update >state.txt
        ;;
        "dir2pg" )
            seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --replace=DIR echo "CREATE SCHEMA IF NOT EXISTS \"DIR\";" | psql --no-password --variable=ON_ERROR_STOP=1
            find /usr/local/dir2pg -type f | sort -u | while read -r TABLE; do
                set -eux
                TABLE="$(basename -- "$TABLE")"
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --replace=DIR echo "CREATE TABLE IF NOT EXISTS \"DIR\".\"$TABLE\" PARTITION OF \"$TABLE\" FOR VALUES IN (DIR);"
            done | psql --no-password --variable=ON_ERROR_STOP=1
            echo wget >fullVersionId.txt
            echo wget >state.txt
        ;;
        "full2pg" )
            find /usr/local/full2pg -type f -name "*.sh" | sort -u | while read -r SH; do
                set -eux
                TABLE="$(basename -- "${SH%.*}")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV bash "$SH" "CSV"
            done
            echo update >state.txt
        ;;
        "sql2pg" )
            find /usr/local/sql2pg -type f -name "*.sql" | sort -u | xargs --verbose --no-run-if-empty --replace=SQL bash -c "set -eux;trap \"exit 255\" ERR;psql --no-password --variable=ON_ERROR_STOP=1 --file=\"SQL\""
            echo dir2pg >state.txt
        ;;
        "unzip" )
            find . -type f -name "*.zip" | sort -u | while read -r ZIP; do
                set -eux
                unzip -ouLL "$ZIP" -d "${ZIP%.*}"
                rm -f "$ZIP"
            done
            echo xml2csv >state.txt
        ;;
        "update" )
            find /usr/local/update -type f -name "*.sh" | sort -u | while read -r SH; do
                set -eux
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=DIR bash "$SH" "DIR"
            done
            echo "done" >state.txt
        ;;
        "xml2csv" )
            find /usr/local/xml2csv -type f -name "*.sh" | sort -u | while read -r SH; do
                set -eux
                TABLE="$(basename -- "${SH%.*}")"
                find . -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=XML bash "$SH" "XML"
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
                jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | [.VersionId, .GarXMLDeltaURL] | join(\";\")" <GetAllDownloadFileInfo.json | while IFS=';' read -r lastVersionId GarXMLDeltaURL; do
                    if [ -z "$GarXMLDeltaURL" ]; then continue; fi
                    URL="$GarXMLDeltaURL"
                    SIZE="$(curl -Is "$URL" | grep 'Content-Length' | grep -oP '\d+')"
                    test "$SIZE" -lt 1073741824
                    ZIP="$lastVersionId.zip"
                    wget --continue --output-document="$ZIP" "$URL"
                    echo "$lastVersionId" >deltaVersionId.txt
                    echo unzip >state.txt
                done
            fi
        ;;
    esac
    state="$(cat state.txt)"
    test "$state" != "done"
do true; done 2>&1 | tee cron.log
