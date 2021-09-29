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
    isactive BOOLEAN NOT NULL,
    region smallint NOT NULL
) PARTITION BY LIST (region);
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
CREATE INDEX IF NOT EXISTS adm_hierarchy_isactive_idx ON adm_hierarchy USING btree (isactive) WHERE NOT isactive;
