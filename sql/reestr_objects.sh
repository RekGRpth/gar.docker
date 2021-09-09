#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS $DIR;
CREATE TABLE IF NOT EXISTS $DIR.reestr_objects (CONSTRAINT $DIR.reestr_objects_pkey PRIMARY KEY (objectid)) INHERITS (reestr_objects);
COMMENT ON TABLE $DIR.reestr_objects IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN $DIR.reestr_objects.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN $DIR.reestr_objects.createdate IS 'Дата создания';
COMMENT ON COLUMN $DIR.reestr_objects.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN $DIR.reestr_objects.levelid IS 'Уровень объекта';
COMMENT ON COLUMN $DIR.reestr_objects.updatedate IS 'Дата обновления';
COMMENT ON COLUMN $DIR.reestr_objects.objectguid IS 'GUID объекта';
COMMENT ON COLUMN $DIR.reestr_objects.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';
CREATE INDEX IF NOT EXISTS $DIR.reestr_objects_isactive_idx ON param_types USING btree ($DIR.reestr_objects);
EOF
