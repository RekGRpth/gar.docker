#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
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
CREATE INDEX IF NOT EXISTS adm_hierarchy_startdate_idx ON "${DIR}".adm_hierarchy USING btree (startdate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_enddate_idx ON "${DIR}".adm_hierarchy USING btree (enddate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON "${DIR}".adm_hierarchy USING btree (isactive);
CREATE OR REPLACE FUNCTION "${DIR}".adm_hierarchy_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    insert into gar
    SELECT --distinct
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post
    FROM "${DIR}".addr_obj as addr_obj
    inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level::int AND addr_obj_types.shortname = addr_obj.typename and addr_obj_types.isactive and current_timestamp between addr_obj_types.startdate and addr_obj_types.enddate
    left join "${DIR}".addr_obj as addr_obj_parent on addr_obj_parent.objectid = new.parentobjid and addr_obj_parent.isactive = 1 and addr_obj_parent.isactual = 1 and current_timestamp between addr_obj_parent.startdate and addr_obj_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join "${DIR}".addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate and addr_obj.objectid = new.objectid
    on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
    return new;
END;$body$;
CREATE TRIGGER adm_hierarchy_after_trigger AFTER INSERT OR UPDATE ON "${DIR}".adm_hierarchy FOR EACH ROW WHEN (now() between new.startdate and new.enddate and new.isactive = 1) EXECUTE PROCEDURE "${DIR}".adm_hierarchy_trigger();
EOF
