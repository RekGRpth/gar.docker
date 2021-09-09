#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS addr_obj_division_$DIR (CONSTRAINT addr_obj_division_${DIR}_pkey PRIMARY KEY (id)) INHERITS (addr_obj_division);
COMMENT ON TABLE addr_obj_division_$DIR IS 'Сведения по операциям переподчинения';
COMMENT ON COLUMN addr_obj_division_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN addr_obj_division_$DIR.parentid IS 'Родительский ID';
COMMENT ON COLUMN addr_obj_division_$DIR.childid IS 'Дочерний ID';
COMMENT ON COLUMN addr_obj_division_$DIR.changeid IS 'ID изменившей транзакции';
EOF
