#!/bin/sh

set -eux
trap "exit 255" ERR
DIR="$1"
psql --no-password --variable=ON_ERROR_STOP=1 --variable=DIR="$DIR" <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".adm_hierarchy (CONSTRAINT adm_hierarchy_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
COMMENT ON TABLE "${DIR}".adm_hierarchy IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.regioncode IS 'Код региона';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.areacode IS 'Код района';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.citycode IS 'Код города';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.plancode IS 'Код ЭПС';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.streetcode IS 'Код улицы';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN "${DIR}".adm_hierarchy.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS adm_hierarchy_objectid_idx ON "${DIR}".adm_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_parentobjid_idx ON "${DIR}".adm_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON "${DIR}".adm_hierarchy USING btree (isactive) WHERE NOT isactive;
EOF
