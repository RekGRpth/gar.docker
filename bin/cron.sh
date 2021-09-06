#!/bin/sh -eux

#HTM=Updates.html
#ZIP=fias_dbf.zip
touch .deltaVersionId
touch .fullVersionId
touch .state
#exec 2>&1
#set -ex
#if [ "$(ps | grep 'dbf.sh' | grep -v grep | wc -l)" -ne "2" ]; then exit; fi
state="$(cat .state)"
while
    case "$state" in
        "drop" )
            ls *.sql | xargs -r -n 1 -P "$(nproc)" sh /drop.sh
            echo done > state
        ;;
        "update" )
            for TABLE in "addrob\d\d" "stead\d\d" "house\d\d" "room\d\d"; do
                psql -h /run/postgresql -d fias -U dbf -w -A -v ON_ERROR_STOP=1 -q -t -F ' ' <<EOF | xargs -r -n 1 -P "$(nproc)" sh /update.sh
SELECT      tables.table_name
FROM        information_schema.tables
WHERE       tables.table_catalog = 'fias'
AND         tables.table_schema = 'dbf'
AND         tables.table_name ~ '^$TABLE'
order by    1
EOF
            done
            echo drop > state
        ;;
        "csv2pg" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                CSV="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${CSV}_2*.csv" | sort -u | xargs -r -n 1 -P "$(nproc)" csv2pg.sh "$XSD"
            done
            echo update >.state
        ;;
        "unzip" )
            ls *.zip | sort -u | while read -r ZIP; do
                unzip -ouLL "$ZIP"
                rm -f "$ZIP"
            done
            echo xml2csv >.state
        ;;
        "xml2csv" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                XML="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${XML}_2*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv.sh "$XSD"
            done
            echo csv2pg >.state
        ;;
        * )
            deltaVersionId="$(cat .deltaVersionId)"
            if [ -z "$deltaVersionId" ]; then
                wget --continue --output-document=.GetLastDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
                lastVersionId="$(cat .GetLastDownloadFileInfo | jq .VersionId)"
                echo "$lastVersionId" >.deltaVersionId
                echo "$lastVersionId" >.fullVersionId
                URL="$(cat .GetLastDownloadFileInfo | jq .GarXMLFullURL)"
                ZIP="$lastVersionId.zip"
                wget --continue --output-document="$ZIP" "$URL"
            else
                wget --continue --output-document=.GetAllDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetAllDownloadFileInfo
                cat GetAllDownloadFileInfo | jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | [.VersionId, .GarXMLDeltaURL] | join(\";\")" | while IFS=';' read -r lastVersionId GarXMLDeltaURL; do
                    URL="$GarXMLDeltaURL"
                    ZIP="$lastVersionId.zip"
                    wget --continue --output-document="$ZIP" "$URL"
                    echo "$lastVersionId" >.deltaVersionId
                done
            fi
            echo unzip >.state
        ;;
    esac
    state="$(cat .state)"
    test "$state" != "done"
do true; done
