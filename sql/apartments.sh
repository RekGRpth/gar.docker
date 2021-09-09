#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS $DIR;
CREATE TABLE IF NOT EXISTS $DIR.apartments (CONSTRAINT $DIR.apartments_pkey PRIMARY KEY (id)) INHERITS (apartments);
COMMENT ON TABLE $DIR.apartments IS 'Сведения по помещениям';
COMMENT ON COLUMN $DIR.apartments.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN $DIR.apartments.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN $DIR.apartments.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN $DIR.apartments.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN $DIR.apartments.number IS 'Номер комнаты';
COMMENT ON COLUMN $DIR.apartments.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN $DIR.apartments.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN $DIR.apartments.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN $DIR.apartments.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN $DIR.apartments.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN $DIR.apartments.startdate IS 'Начало действия записи';
COMMENT ON COLUMN $DIR.apartments.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN $DIR.apartments.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN $DIR.apartments.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS $DIR.apartments_objectid_idx ON $DIR.apartments USING btree (objectid);
CREATE INDEX IF NOT EXISTS $DIR.apartments_aparttype_idx ON $DIR.apartments USING btree (aparttype);
CREATE INDEX IF NOT EXISTS $DIR.apartments_startdate_idx ON $DIR.apartments USING btree (startdate);
CREATE INDEX IF NOT EXISTS $DIR.apartments_enddate_idx ON $DIR.apartments USING btree (enddate);
CREATE INDEX IF NOT EXISTS $DIR.apartments_isactual_idx ON $DIR.apartments USING btree (isactual);
CREATE INDEX IF NOT EXISTS $DIR.apartments_isactive_idx ON $DIR.apartments USING btree (isactive);
EOF
