CREATE TABLE IF NOT EXISTS house_types (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    shortname VARCHAR,
    "desc" VARCHAR,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE house_types IS 'Сведения по типам домов';
COMMENT ON COLUMN house_types.id IS 'Идентификатор';
COMMENT ON COLUMN house_types.name IS 'Наименование';
COMMENT ON COLUMN house_types.shortname IS 'Краткое наименование';
COMMENT ON COLUMN house_types.desc IS 'Описание';
COMMENT ON COLUMN house_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN house_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN house_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN house_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS house_types_isactive_idx ON house_types USING btree (isactive) WHERE NOT isactive;
