#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS rooms_$DIR (CONSTRAINT rooms_${DIR}_pkey PRIMARY KEY (id)) INHERITS (rooms);
COMMENT ON TABLE rooms_$DIR IS 'Сведения по комнатам';
COMMENT ON COLUMN rooms_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN rooms_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN rooms_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN rooms_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN rooms_$DIR.number IS 'Номер комнаты или офиса';
COMMENT ON COLUMN rooms_$DIR.roomtype IS 'Тип комнаты или офиса';
COMMENT ON COLUMN rooms_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN rooms_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN rooms_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN rooms_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN rooms_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN rooms_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN rooms_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN rooms_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS rooms_${DIR}_objectid_idx ON rooms_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_${DIR}_roomtype_idx ON rooms_$DIR USING btree (roomtype);
CREATE INDEX IF NOT EXISTS rooms_${DIR}_startdate_idx ON rooms_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_${DIR}_enddate_idx ON rooms_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS rooms_${DIR}_isactual_idx ON rooms_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS rooms_${DIR}_isactive_idx ON rooms_$DIR USING btree (isactive);
EOF
