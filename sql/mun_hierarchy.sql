CREATE TABLE IF NOT EXISTS mun_hierarchy (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    parentobjid BIGINT,
    changeid BIGINT NOT NULL,
    oktmo VARCHAR(11),
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE mun_hierarchy IS 'Сведения по иерархии в муниципальном делении';
COMMENT ON COLUMN mun_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN mun_hierarchy.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN mun_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN mun_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN mun_hierarchy.oktmo IS 'Код ОКТМО';
COMMENT ON COLUMN mun_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN mun_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN mun_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN mun_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN mun_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN mun_hierarchy.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS mun_hierarchy_objectid_idx ON mun_hierarchy USING btree (objectid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_parentobjid_idx ON mun_hierarchy USING btree (parentobjid);
CREATE INDEX IF NOT EXISTS mun_hierarchy_startdate_idx ON mun_hierarchy USING btree (startdate);
CREATE INDEX IF NOT EXISTS mun_hierarchy_enddate_idx ON mun_hierarchy USING btree (enddate);
CREATE INDEX IF NOT EXISTS mun_hierarchy_isactive_idx ON mun_hierarchy USING btree (isactive);
