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
        "csv2pg" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                TABLE="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs -r -n 1 -P "$(nproc)" csv2pg.sh "$TABLE"
            done
            echo done >.state
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
                TABLE="$(basename -- "${XSD%.*}")"
                find -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv.sh "$TABLE"
            done
            echo csv2pg >.state
        ;;
        * )
            echo done >.state
            deltaVersionId="$(cat .deltaVersionId)"
            if [ -z "$deltaVersionId" ]; then
                wget --continue --output-document=.GetLastDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
                lastVersionId="$(cat .GetLastDownloadFileInfo | jq --raw-output .VersionId)"
                echo "$lastVersionId" >.deltaVersionId
                echo "$lastVersionId" >.fullVersionId
                URL="$(cat .GetLastDownloadFileInfo | jq --raw-output .GarXMLFullURL)"
                ZIP="$lastVersionId.zip"
                wget --continue --output-document="$ZIP" "$URL"
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
do true; done
