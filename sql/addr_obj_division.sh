#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS $DIR;
CREATE TABLE IF NOT EXISTS $DIR.addr_obj_division (CONSTRAINT $DIR.addr_obj_division_pkey PRIMARY KEY (id)) INHERITS (addr_obj_division);
COMMENT ON TABLE $DIR.addr_obj_division IS 'Сведения по операциям переподчинения';
COMMENT ON COLUMN $DIR.addr_obj_division.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN $DIR.addr_obj_division.parentid IS 'Родительский ID';
COMMENT ON COLUMN $DIR.addr_obj_division.childid IS 'Дочерний ID';
COMMENT ON COLUMN $DIR.addr_obj_division.changeid IS 'ID изменившей транзакции';
EOF
