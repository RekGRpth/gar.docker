#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS steads_$DIR (CONSTRAINT steads_${DIR}_pkey PRIMARY KEY (id)) INHERITS (steads);
COMMENT ON TABLE steads_$DIR IS 'Сведения по земельным участкам';
COMMENT ON COLUMN steads_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN steads_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN steads_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN steads_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN steads_$DIR.number IS 'Номер земельного участка';
COMMENT ON COLUMN steads_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN steads_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN steads_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN steads_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN steads_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN steads_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN steads_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN steads_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS steads_${DIR}_objectid_idx ON steads_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_${DIR}_startdate_idx ON steads_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS steads_${DIR}_enddate_idx ON steads_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS steads_${DIR}_isactual_idx ON steads_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS steads_${DIR}_isactive_idx ON steads_$DIR USING btree (isactive);
EOF
