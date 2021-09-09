#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".carplaces (CONSTRAINT "${DIR}".carplaces_pkey PRIMARY KEY (id)) INHERITS (carplaces);
COMMENT ON TABLE "${DIR}".carplaces IS 'Сведения по машино-местам';
COMMENT ON COLUMN "${DIR}".carplaces.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".carplaces.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN "${DIR}".carplaces.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN "${DIR}".carplaces.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".carplaces.number IS 'Номер машиноместа';
COMMENT ON COLUMN "${DIR}".carplaces.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN "${DIR}".carplaces.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".carplaces.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".carplaces.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".carplaces.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".carplaces.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".carplaces.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN "${DIR}".carplaces.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS "${DIR}".carplaces_objectid_idx ON "${DIR}".carplaces USING btree (objectid);
CREATE INDEX IF NOT EXISTS "${DIR}".carplaces_startdate_idx ON "${DIR}".carplaces USING btree (startdate);
CREATE INDEX IF NOT EXISTS "${DIR}".carplaces_enddate_idx ON "${DIR}".carplaces USING btree (enddate);
CREATE INDEX IF NOT EXISTS "${DIR}".carplaces_isactual_idx ON "${DIR}".carplaces USING btree (isactual);
CREATE INDEX IF NOT EXISTS "${DIR}".carplaces_isactive_idx ON "${DIR}".carplaces USING btree (isactive);
EOF
