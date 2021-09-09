#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS apartments_$DIR (CONSTRAINT apartments_${DIR}_pkey PRIMARY KEY (id)) INHERITS (apartments);
COMMENT ON TABLE apartments_$DIR IS 'Сведения по помещениям';
COMMENT ON COLUMN apartments_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN apartments_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN apartments_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN apartments_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN apartments_$DIR.number IS 'Номер комнаты';
COMMENT ON COLUMN apartments_$DIR.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN apartments_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN apartments_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN apartments_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN apartments_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartments_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN apartments_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN apartments_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN apartments_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS apartments_${DIR}_objectid_idx ON apartments_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS apartments_${DIR}_aparttype_idx ON apartments_$DIR USING btree (aparttype);
CREATE INDEX IF NOT EXISTS apartments_${DIR}_startdate_idx ON apartments_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS apartments_${DIR}_enddate_idx ON apartments_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS apartments_${DIR}_isactual_idx ON apartments_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS apartments_${DIR}_isactive_idx ON apartments_$DIR USING btree (isactive);
EOF
