#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS reestr_objects_$DIR (CONSTRAINT reestr_objects_${DIR}_pkey PRIMARY KEY (objectid)) INHERITS (reestr_objects);
COMMENT ON TABLE reestr_objects_$DIR IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN reestr_objects_$DIR.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN reestr_objects_$DIR.createdate IS 'Дата создания';
COMMENT ON COLUMN reestr_objects_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN reestr_objects_$DIR.levelid IS 'Уровень объекта';
COMMENT ON COLUMN reestr_objects_$DIR.updatedate IS 'Дата обновления';
COMMENT ON COLUMN reestr_objects_$DIR.objectguid IS 'GUID объекта';
COMMENT ON COLUMN reestr_objects_$DIR.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';
CREATE INDEX IF NOT EXISTS reestr_objects_${DIR}_isactive_idx ON param_types USING btree (reestr_objects_$DIR);
EOF
