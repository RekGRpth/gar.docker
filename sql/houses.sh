#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS houses_$DIR (CONSTRAINT houses_${DIR}_pkey PRIMARY KEY (id)) INHERITS (houses);
COMMENT ON TABLE houses_$DIR IS 'Сведения по номерам домов улиц городов и населенных пунктов';
COMMENT ON COLUMN houses_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN houses_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN houses_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN houses_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN houses_$DIR.housenum IS 'Основной номер дома';
COMMENT ON COLUMN houses_$DIR.addnum1 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses_$DIR.addnum2 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses_$DIR.housetype IS 'Основной тип дома';
COMMENT ON COLUMN houses_$DIR.addtype1 IS 'Дополнительный тип дома 1';
COMMENT ON COLUMN houses_$DIR.addtype2 IS 'Дополнительный тип дома 2';
COMMENT ON COLUMN houses_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN houses_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN houses_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN houses_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN houses_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN houses_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN houses_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN houses_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS houses_${DIR}_objectid_idx ON houses_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_${DIR}_housetype_idx ON houses_$DIR USING btree (housetype);
CREATE INDEX IF NOT EXISTS houses_${DIR}_startdate_idx ON houses_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS houses_${DIR}_enddate_idx ON houses_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS houses_${DIR}_isactual_idx ON houses_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS houses_${DIR}_isactive_idx ON houses_$DIR USING btree (isactive);
EOF
