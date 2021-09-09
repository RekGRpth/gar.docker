#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS addr_obj_$DIR (CONSTRAINT addr_obj_${DIR}_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
COMMENT ON TABLE addr_obj_$DIR IS 'Сведения классификатора адресообразующих элементов';
COMMENT ON COLUMN addr_obj_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN addr_obj_$DIR.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN addr_obj_$DIR.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN addr_obj_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN addr_obj_$DIR.name IS 'Наименование';
COMMENT ON COLUMN addr_obj_$DIR.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN addr_obj_$DIR.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN addr_obj_$DIR.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN addr_obj_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN addr_obj_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN addr_obj_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN addr_obj_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN addr_obj_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN addr_obj_$DIR.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN addr_obj_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_objectid_idx ON addr_obj_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_typename_idx ON addr_obj_$DIR USING btree (typename);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_level_idx ON addr_obj_$DIR USING btree (level);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_startdate_idx ON addr_obj_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_enddate_idx ON addr_obj_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_isactual_idx ON addr_obj_$DIR USING btree (isactual);
CREATE INDEX IF NOT EXISTS addr_obj_${DIR}_isactive_idx ON addr_obj_$DIR USING btree (isactive);
EOF
