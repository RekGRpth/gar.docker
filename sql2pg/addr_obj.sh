#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 --variable=DIR="$DIR" <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".addr_obj (CONSTRAINT addr_obj_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
COMMENT ON TABLE "${DIR}".addr_obj IS 'Сведения классификатора адресообразующих элементов';
COMMENT ON COLUMN "${DIR}".addr_obj.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".addr_obj.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN "${DIR}".addr_obj.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN "${DIR}".addr_obj.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".addr_obj.name IS 'Наименование';
COMMENT ON COLUMN "${DIR}".addr_obj.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN "${DIR}".addr_obj.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN "${DIR}".addr_obj.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN "${DIR}".addr_obj.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".addr_obj.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".addr_obj.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".addr_obj.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".addr_obj.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".addr_obj.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN "${DIR}".addr_obj.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS addr_obj_objectid_idx ON "${DIR}".addr_obj USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_objectguid_idx ON "${DIR}".addr_obj USING btree (objectguid);
CREATE INDEX IF NOT EXISTS addr_obj_typename_idx ON "${DIR}".addr_obj USING btree (typename);
CREATE INDEX IF NOT EXISTS addr_obj_level_idx ON "${DIR}".addr_obj USING btree (level);
CREATE INDEX IF NOT EXISTS addr_obj_isactive_idx ON "${DIR}".addr_obj USING btree (isactive) WHERE NOT isactive;
EOF
