#!/bin/sh

set -eux
touch deltaVersionId.txt
touch fullVersionId.txt
touch state.txt
state="$(cat state.txt)"
while
    case "$state" in
        "delta2pg" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                FIELDS="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | sed -uE 's|^(.+)$|"\1"|' | paste -sd ",")"
                FORCE_NOT_NULL="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --value-of @use --output ";" --value-of @name --nl "$XSD" | grep -v optional | sed -uE 's|^required;||' | sed -uE 's|^(.+)$|"\1"|' | sed 's/\(.*\)/\L\1/' | paste -sd ",")"
                TABLE="$(basename -- "${XSD%.*}")"
                PRIMARY="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --value-of @use --output ";" --value-of @name --nl "$XSD" | grep -v optional | sed -uE 's|^required;||' | sed -uE 's|^(.+)$|"\1"|' | sed 's/\(.*\)/\L\1/' | head -1)"
                UPDATE="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | sed -uE 's|^(.+)$|"\1"=EXCLUDED."\1"|' | tail -n+2 | paste -sd ",")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV delta2pg.sh "CSV" "$TABLE" "$FIELDS" "$FORCE_NOT_NULL" "$UPDATE" "$PRIMARY" || exit 255
                echo "$?"
            done
            echo update >state.txt
        ;;
        "full2pg" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                FIELDS="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | sed -uE 's|^(.+)$|"\1"|' | paste -sd ",")"
                FORCE_NOT_NULL="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --value-of @use --output ";" --value-of @name --nl "$XSD" | grep -v optional | sed -uE 's|^required;||' | sed -uE 's|^(.+)$|"\1"|' | sed 's/\(.*\)/\L\1/' | paste -sd ",")"
                TABLE="$(basename -- "${XSD%.*}")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=CSV full2pg.sh "CSV" "$TABLE" "$FIELDS" "$FORCE_NOT_NULL" || exit 255
                echo "$?"
            done
            echo update >state.txt
        ;;
        "sql2pg" )
            find /usr/local/sql -type f -name "*.sql" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=SQL psql --no-password --variable=ON_ERROR_STOP=1 --file="SQL" || exit 255
            find /usr/local/sql -type f -name "*.sh" | sort -u | while read -r SH; do
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=DIR sh "$SH" "DIR" || exit 255
            done
            echo "$?"
            echo wget >fullVersionId.txt
            echo wget >state.txt
        ;;
        "unzip" )
            find . -type f -name "*.zip" | sort -u | while read -r ZIP; do
                unzip -ouLL "$ZIP" -d "${ZIP%.*}"
                rm -f "$ZIP"
            done
            echo xml2csv >state.txt
        ;;
        "update" )
            for TABLE in addr_obj apartments carplaces houses rooms steads; do
                seq --format "%02.0f" 1 99 | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=DIR "$TABLE.sh" "DIR" || exit 255
            done
            echo "done" >state.txt
        ;;
        "xml2csv" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                FIELDS="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --output " @" --value-of @name "$XSD")"
                RECORD="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/@name --output / --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/@name "$XSD")"
                TABLE="$(basename -- "${XSD%.*}")"
                find . -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs --verbose --no-run-if-empty --max-procs="$(nproc)" --replace=XML xml2csv.sh "XML" "$RECORD" "$FIELDS" || exit 255
                echo "$?"
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
