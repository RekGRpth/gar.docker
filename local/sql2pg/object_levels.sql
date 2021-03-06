CREATE TABLE IF NOT EXISTS object_levels (
    level INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    shortname VARCHAR,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE object_levels IS 'Сведения по уровням адресных объектов';
COMMENT ON COLUMN object_levels.level IS 'Уникальный идентификатор записи. Ключевое поле. Номер уровня объекта';
COMMENT ON COLUMN object_levels.name IS 'Наименование';
COMMENT ON COLUMN object_levels.shortname IS 'Краткое наименование';
COMMENT ON COLUMN object_levels.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN object_levels.startdate IS 'Начало действия записи';
COMMENT ON COLUMN object_levels.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN object_levels.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS object_levels_shortname_idx ON object_levels USING btree (shortname);
CREATE INDEX IF NOT EXISTS object_levels_isactive_idx ON object_levels USING btree (isactive) WHERE NOT isactive;
