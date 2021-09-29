#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".addr_obj_params PARTITION OF addr_obj_params FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".addr_obj_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN "${DIR}".addr_obj_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN "${DIR}".addr_obj_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN "${DIR}".addr_obj_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".addr_obj_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN "${DIR}".addr_obj_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN "${DIR}".addr_obj_params.value IS 'Значение параметра';
COMMENT ON COLUMN "${DIR}".addr_obj_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".addr_obj_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN "${DIR}".addr_obj_params.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS addr_obj_params_objectid_idx ON "${DIR}".addr_obj_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_params_typeid_idx ON "${DIR}".addr_obj_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS addr_obj_params_startdate_idx ON "${DIR}".addr_obj_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS addr_obj_params_enddate_idx ON "${DIR}".addr_obj_params USING btree (enddate);
EOF
