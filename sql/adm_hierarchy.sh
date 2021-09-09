#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS adm_hierarchy_$DIR (CONSTRAINT adm_hierarchy_${DIR}_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
COMMENT ON TABLE adm_hierarchy_$DIR IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN adm_hierarchy_$DIR.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN adm_hierarchy_$DIR.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN adm_hierarchy_$DIR.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN adm_hierarchy_$DIR.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN adm_hierarchy_$DIR.regioncode IS 'Код региона';
COMMENT ON COLUMN adm_hierarchy_$DIR.areacode IS 'Код района';
COMMENT ON COLUMN adm_hierarchy_$DIR.citycode IS 'Код города';
COMMENT ON COLUMN adm_hierarchy_$DIR.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN adm_hierarchy_$DIR.plancode IS 'Код ЭПС';
COMMENT ON COLUMN adm_hierarchy_$DIR.streetcode IS 'Код улицы';
COMMENT ON COLUMN adm_hierarchy_$DIR.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN adm_hierarchy_$DIR.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN adm_hierarchy_$DIR.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN adm_hierarchy_$DIR.startdate IS 'Начало действия записи';
COMMENT ON COLUMN adm_hierarchy_$DIR.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN adm_hierarchy_$DIR.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS adm_hierarchy_${DIR}_objectid_idx ON adm_hierarchy_$DIR USING btree (objectid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_${DIR}_parentobjid_idx ON adm_hierarchy_$DIR USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_${DIR}_startdate_idx ON adm_hierarchy_$DIR USING btree (startdate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_${DIR}_enddate_idx ON adm_hierarchy_$DIR USING btree (enddate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_${DIR}_isactive_idx ON adm_hierarchy_$DIR USING btree (isactive);
EOF
