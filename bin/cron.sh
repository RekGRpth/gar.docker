#!/bin/sh -eux

touch .deltaVersionId
touch .fullVersionId
touch .state
state="$(cat .state)"
while
    case "$state" in
        "csv2pg" )
            deltaVersionId="$(cat .deltaVersionId)"
            fullVersionId="$(cat .fullVersionId)"
            if [ "$deltaVersionId" = "$fullVersionId" ]; then
                TRUNCATE=true
            fi
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                FIELDS="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | sed -uE 's|^(.+)$|"\1"|' | paste -sd ",")"
                FORCE_NOT_NULL="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --value-of @use --output ";" --value-of @name --nl "$XSD" | grep -v optional | sed -uE 's|^required;||' | sed -uE 's|^(.+)$|"\1"|' | sed 's/\(.*\)/\L\1/' | paste -sd ",")"
                UPDATE="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute/@name "$XSD" | sed 's/\(.*\)/\L\1/' | sed -uE 's|^(.+)$|"\1"=EXCLUDED."\1"|' | paste -sd ",")"
                TABLE="$(basename -- "${XSD%.*}")"
                find . -type f -name "as_${TABLE}_2*.csv" | sort -u | xargs -r -n 1 -P "$(nproc)" csv2pg.sh "$TABLE" "$FIELDS" "$FORCE_NOT_NULL" "$UPDATE" "$TRUNCATE" || exit 255
                echo "$?"
            done
            echo "done" >.state
        ;;
        "sql2pg" )
            find /usr/local/sql -type f -name "*.sql" | sort -u | while read -r SQL; do
                psql --no-password --variable=ON_ERROR_STOP=1 --file="$SQL"
            done
            echo "done" >.fullVersionId
            echo wget >.state
        ;;
        "unzip" )
            find . -type f -name "*.zip" | sort -u | while read -r ZIP; do
                unzip -ouLL "$ZIP" -d "${ZIP%.*}"
                rm -f "$ZIP"
            done
            echo xml2csv >.state
        ;;
        "xml2csv" )
            find /usr/local/xsd -type f -name "*.xsd" | sort -u | while read -r XSD; do
                RECORD="$(xmlstarlet select --text --noblanks --template --value-of /xs:schema/xs:element/@name --output / --value-of /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/@name "$XSD")"
                FIELDS="$(xmlstarlet select --text --noblanks --template --match /xs:schema/xs:element/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:attribute --output " @" --value-of @name "$XSD")"
                TABLE="$(basename -- "${XSD%.*}")"
                find . -type f -name "as_${TABLE}_2*.xml" | sort -u | xargs -r -n 1 -P "$(nproc)" xml2csv.sh "$TABLE" "$RECORD" "$FIELDS" || exit 255
                echo "$?"
            done
            echo csv2pg >.state
        ;;
        * )
            echo "done" >.state
            deltaVersionId="$(cat .deltaVersionId)"
            fullVersionId="$(cat .fullVersionId)"
            if [ -z "$fullVersionId" ]; then
                echo sql2pg >.state
            elif [ -z "$deltaVersionId" ]; then
                wget --continue --output-document=.GetLastDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
                lastVersionId="$(jq --raw-output .VersionId <.GetLastDownloadFileInfo)"
                URL="$(jq --raw-output .GarXMLFullURL <.GetLastDownloadFileInfo)"
                ZIP="$lastVersionId.zip"
                wget --continue --output-document="$ZIP" "$URL"
                echo "$lastVersionId" >.deltaVersionId
                echo "$lastVersionId" >.fullVersionId
            else
                wget --continue --output-document=.GetAllDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetAllDownloadFileInfo
                jq --raw-output "sort_by(.VersionId) | .[] | select(.VersionId > $deltaVersionId) | [.VersionId, .GarXMLDeltaURL] | join(\";\")" <.GetAllDownloadFileInfo | while IFS=';' read -r lastVersionId GarXMLDeltaURL; do
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
