CREATE TABLE IF NOT EXISTS reestr_objects (
    objectid BIGINT NOT NULL PRIMARY KEY,
    createdate DATE NOT NULL,
    changeid BIGINT NOT NULL,
    levelid INT NOT NULL,
    updatedate DATE NOT NULL,
    objectguid UUID NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE reestr_objects IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN reestr_objects.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN reestr_objects.createdate IS 'Дата создания';
COMMENT ON COLUMN reestr_objects.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN reestr_objects.levelid IS 'Уровень объекта';
COMMENT ON COLUMN reestr_objects.updatedate IS 'Дата обновления';
COMMENT ON COLUMN reestr_objects.objectguid IS 'GUID объекта';
COMMENT ON COLUMN reestr_objects.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';
CREATE INDEX IF NOT EXISTS reestr_objects_isactive_idx ON reestr_objects USING btree (isactive);
