#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS carplaces_$DIR (CONSTRAINT carplaces_${DIR}_pkey PRIMARY KEY (id)) INHERITS (carplaces);
COMMENT ON TABLE carplaces_$DIR IS 'Сведения по машино-местам';
COMMENT ON COLUMN carplaces_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN carplaces_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN carplaces_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN carplaces_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN carplaces_$DIR.number IS 'Номер машиноместа';
COMMENT ON COLUMN carplaces_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN carplaces_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN carplaces_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN carplaces_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN carplaces_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN carplaces_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN carplaces_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN carplaces_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS carplaces_${DIR}_objectid_idx ON carplaces_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_${DIR}_startdate_idx ON carplaces_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS carplaces_${DIR}_enddate_idx ON carplaces_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS carplaces_${DIR}_isactual_idx ON carplaces_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS carplaces_${DIR}_isactive_idx ON carplaces_$DIR USING btree (isactive);
EOF
