#!/bin/sh -eux

touch .deltaVersionId
touch .fullVersionId
touch .state
state="$(cat .state)"
while
    case "$state" in
        "csv2pg" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                echo "$state" >.state
                TABLE="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs -r -n 1 -P "$(nproc)" csv2pg.sh "$TABLE"
                echo done >.state
            done
        ;;
        "unzip" )
            ls *.zip | sort -u | while read -r ZIP; do
                echo "$state" >.state
                unzip -ouLL "$ZIP" -d "${ZIP%.*}"
                rm -f "$ZIP"
                echo xml2csv >.state
            done
        ;;
        "xml2csv" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                echo "$state" >.state
                TABLE="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv.sh "$TABLE"
                echo csv2pg >.state
            done
        ;;
        * )
            echo done >.state
            deltaVersionId="$(cat .deltaVersionId)"
            if [ -z "$deltaVersionId" ]; then
                wget --continue --output-document=.GetLastDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
                lastVersionId="$(cat .GetLastDownloadFileInfo | jq --raw-output .VersionId)"
                URL="$(cat .GetLastDownloadFileInfo | jq --raw-output .GarXMLFullURL)"
                ZIP="$lastVersionId.zip"
                wget --continue --output-document="$ZIP" "$URL"
                echo "$lastVersionId" >.deltaVersionId
                echo "$lastVersionId" >.fullVersionId
            else
                wget --continue --output-document=.GetAllDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetAllDownloadFileInfo
                cat .GetAllDownloadFileInfo | jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | [.VersionId, .GarXMLDeltaURL] | join(\";\")" | while IFS=';' read -r lastVersionId GarXMLDeltaURL; do
                    URL="$GarXMLDeltaURL"
                    ZIP="$lastVersionId.zip"
                    wget --continue --output-document="$ZIP" "$URL"
                    echo "$lastVersionId" >.deltaVersionId
                    echo unzip >.state
                done
            fi
        ;;
    esac
    state="$(cat .state)"
    test "$state" != "done"
do true; done 2>&1 | tee cron.log
