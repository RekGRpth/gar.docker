#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS "${DIR}".rooms (CONSTRAINT rooms_pkey PRIMARY KEY (id)) INHERITS (rooms);
COMMENT ON TABLE "${DIR}".rooms IS 'Сведения по комнатам';
COMMENT ON COLUMN "${DIR}".rooms.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".rooms.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN "${DIR}".rooms.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN "${DIR}".rooms.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".rooms.number IS 'Номер комнаты или офиса';
COMMENT ON COLUMN "${DIR}".rooms.roomtype IS 'Тип комнаты или офиса';
COMMENT ON COLUMN "${DIR}".rooms.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN "${DIR}".rooms.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".rooms.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".rooms.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".rooms.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".rooms.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".rooms.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN "${DIR}".rooms.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS rooms_objectid_idx ON "${DIR}".rooms USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_roomtype_idx ON "${DIR}".rooms USING btree (roomtype);
CREATE INDEX IF NOT EXISTS rooms_startdate_idx ON "${DIR}".rooms USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_enddate_idx ON "${DIR}".rooms USING btree (enddate);
CREATE INDEX IF NOT EXISTS rooms_isactual_idx ON "${DIR}".rooms USING btree (isactual);
CREATE INDEX IF NOT EXISTS rooms_isactive_idx ON "${DIR}".rooms USING btree (isactive);
EOF
