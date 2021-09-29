#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".mun_hierarchy PARTITION OF mun_hierarchy FOR VALUES IN (${DIR});
COMMENT ON TABLE "${DIR}".mun_hierarchy IS 'Сведения по иерархии в муниципальном делении';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.oktmo IS 'Код ОКТМО';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".mun_hierarchy.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS mun_hierarchy_objectid_idx ON "${DIR}".mun_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_parentobjid_idx ON "${DIR}".mun_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_isactive_idx ON "${DIR}".mun_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
