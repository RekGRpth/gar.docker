#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".steads_params PARTITION OF steads_params (CONSTRAINT steads_params_pkey PRIMARY KEY (id)) FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".steads_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN "${DIR}".steads_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN "${DIR}".steads_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN "${DIR}".steads_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".steads_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN "${DIR}".steads_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN "${DIR}".steads_params.value IS 'Значение параметра';
COMMENT ON COLUMN "${DIR}".steads_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".steads_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN "${DIR}".steads_params.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS steads_params_objectid_idx ON "${DIR}".steads_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_params_typeid_idx ON "${DIR}".steads_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS steads_params_startdate_idx ON "${DIR}".steads_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS steads_params_enddate_idx ON "${DIR}".steads_params USING btree (enddate);
EOF