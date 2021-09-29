#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".houses PARTITION OF houses FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".houses IS 'Сведения по номерам домов улиц городов и населенных пунктов';
COMMENT ON COLUMN "${DIR}".houses.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".houses.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN "${DIR}".houses.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN "${DIR}".houses.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".houses.housenum IS 'Основной номер дома';
COMMENT ON COLUMN "${DIR}".houses.addnum1 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN "${DIR}".houses.addnum2 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN "${DIR}".houses.housetype IS 'Основной тип дома';
COMMENT ON COLUMN "${DIR}".houses.addtype1 IS 'Дополнительный тип дома 1';
COMMENT ON COLUMN "${DIR}".houses.addtype2 IS 'Дополнительный тип дома 2';
COMMENT ON COLUMN "${DIR}".houses.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN "${DIR}".houses.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".houses.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".houses.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".houses.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".houses.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".houses.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN "${DIR}".houses.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS houses_objectid_idx ON "${DIR}".houses USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_objectguid_idx ON "${DIR}".houses USING btree (objectguid);
CREATE INDEX IF NOT EXISTS houses_housetype_idx ON "${DIR}".houses USING btree (housetype);
CREATE INDEX IF NOT EXISTS houses_isactive_idx ON "${DIR}".houses USING btree (isactive) WHERE NOT isactive;
EOF
