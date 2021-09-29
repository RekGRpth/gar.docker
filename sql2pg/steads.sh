#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".steads PARTITION OF steads FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".steads IS 'Сведения по земельным участкам';
COMMENT ON COLUMN "${DIR}".steads.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".steads.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN "${DIR}".steads.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN "${DIR}".steads.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".steads.number IS 'Номер земельного участка';
COMMENT ON COLUMN "${DIR}".steads.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN "${DIR}".steads.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".steads.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".steads.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".steads.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".steads.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".steads.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN "${DIR}".steads.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS steads_objectid_idx ON "${DIR}".steads USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_objectguid_idx ON "${DIR}".steads USING btree (objectguid);
CREATE INDEX IF NOT EXISTS steads_isactive_idx ON "${DIR}".steads USING btree (isactive) WHERE NOT isactive;
EOF
