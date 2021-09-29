#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".carplaces_params PARTITION OF carplaces_params FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".carplaces_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN "${DIR}".carplaces_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN "${DIR}".carplaces_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN "${DIR}".carplaces_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".carplaces_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN "${DIR}".carplaces_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN "${DIR}".carplaces_params.value IS 'Значение параметра';
COMMENT ON COLUMN "${DIR}".carplaces_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".carplaces_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN "${DIR}".carplaces_params.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS carplaces_params_objectid_idx ON "${DIR}".carplaces_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_params_typeid_idx ON "${DIR}".carplaces_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS carplaces_params_startdate_idx ON "${DIR}".carplaces_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS carplaces_params_enddate_idx ON "${DIR}".carplaces_params USING btree (enddate);
EOF
