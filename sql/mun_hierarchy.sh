#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS mun_hierarchy_$DIR (CONSTRAINT mun_hierarchy_${DIR}_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
COMMENT ON TABLE mun_hierarchy_$DIR IS 'Сведения по иерархии в муниципальном делении';
COMMENT ON COLUMN mun_hierarchy_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN mun_hierarchy_$DIR.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN mun_hierarchy_$DIR.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN mun_hierarchy_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN mun_hierarchy_$DIR.oktmo IS 'Код ОКТМО';
COMMENT ON COLUMN mun_hierarchy_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN mun_hierarchy_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN mun_hierarchy_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN mun_hierarchy_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN mun_hierarchy_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN mun_hierarchy_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS mun_hierarchy_${DIR}_objectid_idx ON mun_hierarchy_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_${DIR}_parentobjid_idx ON mun_hierarchy_$DIR USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_${DIR}_startdate_idx ON mun_hierarchy_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS mun_hierarchy_${DIR}_enddate_idx ON mun_hierarchy_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS mun_hierarchy_${DIR}_isactive_idx ON mun_hierarchy_$DIR USING btree (isactive);
EOF
