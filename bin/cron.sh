#!/bin/sh -eux

#HTM=Updates.html
#ZIP=fias_dbf.zip
touch .deltaVersionId
touch .fullVersionId
touch .state
#exec 2>&1
#set -ex
if [ "$(ps | grep 'dbf.sh' | grep -v grep | wc -l)" -ne "2" ]; then exit; fi
state="$(cat state)"
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
        "sql2pg" )
            ls *.sql | xargs -r -n 1 -P "$(nproc)" sh /sql2pg.sh
            echo update > state
        ;;
        "combine" )
            ls *.sql | grep -P "\d{4}.sql" | grep -oP "\D+\d{2}" | sort -u | xargs -r -n 1 -P "$(nproc)" sh /combine.sh
            echo sql2pg > state
        ;;
        "dbf2sql" )
            ls *.dbf | grep -v nordoc | xargs -r -n 1 -P "$(nproc)" sh /dbf2sql.sh
            rm -f *.dbf
            echo combine > state
        ;;
        "unzip" )
            unzip -ouLL "$ZIP"
            chmod 644 *.dbf
            rm -f "$ZIP"
            echo dbf2sql > state
        ;;
        * )
            wget --continue --output-document=.GetLastDownloadFileInfo https://fias.nalog.ru/WebServices/Public/GetLastDownloadFileInfo
            deltaVersionId="$(cat .deltaVersionId)"
            fullVersionId="$(cat .fullVersionId)"
            lastVersionId="$(cat .GetLastDownloadFileInfo | jq .VersionId)"
            if [ "$deltaVersionId" == "$lastVersionId" ]; then exit; fi
            if [ -n "$fullVersionId" ]; then
                URL="$(cat .GetLastDownloadFileInfo | jq .GarXMLDeltaURL)"
                echo "$lastVersionId" > .deltaVersionId
            else
                URL="$(cat .GetLastDownloadFileInfo | jq .GarXMLFullURL)"
                echo "$lastVersionId" > .fullVersionId
            fi
            wget --continue --output-document=gar.zip "$URL"
            echo unzip > state
        ;;
    esac
    state="$(cat state)"
    test "$state" != "done"
do true; done
