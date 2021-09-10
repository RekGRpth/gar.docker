CREATE TABLE IF NOT EXISTS adm_hierarchy (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    parentobjid BIGINT,
    changeid BIGINT NOT NULL,
    regioncode VARCHAR(4),
    areacode VARCHAR(4),
    citycode VARCHAR(4),
    placecode VARCHAR(4),
    plancode VARCHAR(4),
    streetcode VARCHAR(4),
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE adm_hierarchy IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN adm_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN adm_hierarchy.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN adm_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN adm_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN adm_hierarchy.regioncode IS 'Код региона';
COMMENT ON COLUMN adm_hierarchy.areacode IS 'Код района';
COMMENT ON COLUMN adm_hierarchy.citycode IS 'Код города';
COMMENT ON COLUMN adm_hierarchy.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN adm_hierarchy.plancode IS 'Код ЭПС';
COMMENT ON COLUMN adm_hierarchy.streetcode IS 'Код улицы';
COMMENT ON COLUMN adm_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN adm_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN adm_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN adm_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN adm_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN adm_hierarchy.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS adm_hierarchy_objectid_idx ON adm_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_parentobjid_idx ON adm_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS adm_hierarchy_startdate_idx ON adm_hierarchy USING btree (startdate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_enddate_idx ON adm_hierarchy USING btree (enddate);
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON adm_hierarchy USING btree (isactive);
CREATE OR REPLACE FUNCTION adm_hierarchy_trigger() RETURNS trigger LANGUAGE plpgsql AS $body$ <<local>> declare
BEGIN
    insert into gar
    SELECT distinct on (parent, name, type)
        addr_obj.objectguid AS id,
        addr_obj_parent.objectguid AS parent,
        addr_obj.name AS name,
        rtrim(addr_obj_types.shortname, '.') AS short,
        addr_obj_types.name AS type,
        addr_obj_params.value AS post
    FROM addr_obj as addr_obj
    inner JOIN addr_obj_types ON addr_obj_types.level = addr_obj.level AND addr_obj_types.shortname = addr_obj.typename and addr_obj_types.isactive-- and current_timestamp between addr_obj_types.startdate and addr_obj_types.enddate
    left join addr_obj as addr_obj_parent on addr_obj_parent.objectid = new.parentobjid and addr_obj_parent.isactive = 1 and addr_obj_parent.isactual = 1 and current_timestamp between addr_obj_parent.startdate and addr_obj_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join addr_obj_params as addr_obj_params on addr_obj_params.objectid = addr_obj.objectid and addr_obj_params.typeid = param_types.id and current_timestamp between addr_obj_params.startdate and addr_obj_params.enddate
    WHERE addr_obj.isactive = 1 and addr_obj.isactual = 1 and current_timestamp between addr_obj.startdate and addr_obj.enddate and addr_obj.objectid = new.objectid
    on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
    insert into gar
    SELECT distinct on (parent, name, type)
        houses.objectguid AS id,
        houses_parent.objectguid AS parent,
        concat_ws(', ', houses.housenum, case when house_types1.id is not null then concat(case when house_types1.id = houses.housetype then 'корп' else rtrim(house_types1.shortname, '.') end, '.', houses.addnum1) end, case when house_types2.id is not null then concat(case when house_types1.id = houses.housetype then 'стр' else rtrim(house_types2.shortname, '.') end, '.', houses.addnum2) end) AS name,
        rtrim(house_types.shortname, '.') AS short,
        house_types.name AS type,
        houses_params.value AS post
    FROM houses as houses
    inner JOIN house_types ON house_types.id = houses.housetype and house_types.isactive --and current_timestamp between house_types.startdate and house_types.enddate
    left JOIN house_types as house_types1 ON house_types1.id = houses.addtype1 and house_types1.isactive --and current_timestamp between house_types1.startdate and house_types1.enddate
    left JOIN house_types as house_types2 ON house_types2.id = houses.addtype2 and house_types2.isactive --and current_timestamp between house_types2.startdate and house_types2.enddate
    left join addr_obj as houses_parent on houses_parent.objectid = new.parentobjid and houses_parent.isactive = 1 and houses_parent.isactual = 1 and current_timestamp between houses_parent.startdate and houses_parent.enddate
    left join param_types on param_types.name = 'Почтовый индекс' and param_types.isactive and current_timestamp between param_types.startdate and param_types.enddate
    left join houses_params as houses_params on houses_params.objectid = houses.objectid and houses_params.typeid = param_types.id and current_timestamp between houses_params.startdate and houses_params.enddate
    WHERE houses.isactive = 1 and houses.isactual = 1 and current_timestamp between houses.startdate and houses.enddate
    on conflict (id) do update set parent = EXCLUDED.parent, name = EXCLUDED.name, short = EXCLUDED.short, type = EXCLUDED.type, post = EXCLUDED.post;
    return new;
END;$body$;
CREATE TRIGGER adm_hierarchy_after_trigger AFTER INSERT OR UPDATE ON adm_hierarchy FOR EACH ROW WHEN (now() between new.startdate and new.enddate and new.isactive = 1) EXECUTE PROCEDURE adm_hierarchy_trigger();
