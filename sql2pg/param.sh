#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
for TABLE in addr_obj_params apartments_params carplaces_params houses_params rooms_params steads_params; do
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".${TABLE} PARTITION OF ${TABLE} (CONSTRAINT ${TABLE}_pkey PRIMARY KEY (id)) FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".${TABLE} IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN "${DIR}".${TABLE}.id IS 'Идентификатор записи';
COMMENT ON COLUMN "${DIR}".${TABLE}.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN "${DIR}".${TABLE}.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".${TABLE}.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN "${DIR}".${TABLE}.typeid IS 'Тип параметра';
COMMENT ON COLUMN "${DIR}".${TABLE}.value IS 'Значение параметра';
COMMENT ON COLUMN "${DIR}".${TABLE}.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".${TABLE}.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN "${DIR}".${TABLE}.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS ${TABLE}_objectid_idx ON "${DIR}".${TABLE} USING btree (objectid);
CREATE INDEX IF NOT EXISTS ${TABLE}_typeid_idx ON "${DIR}".${TABLE} USING btree (typeid);
CREATE INDEX IF NOT EXISTS ${TABLE}_startdate_idx ON "${DIR}".${TABLE} USING btree (startdate);
CREATE INDEX IF NOT EXISTS ${TABLE}_enddate_idx ON "${DIR}".${TABLE} USING btree (enddate);
EOF
done
