CREATE TABLE IF NOT EXISTS addhouse_types (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    shortname VARCHAR(50),
    "desc" VARCHAR(250),
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE addhouse_types IS 'Дополнительные сведения по типам домов';
COMMENT ON COLUMN addhouse_types.id IS 'Идентификатор';
COMMENT ON COLUMN addhouse_types.name IS 'Наименование';
COMMENT ON COLUMN addhouse_types.shortname IS 'Краткое наименование';
COMMENT ON COLUMN addhouse_types.desc IS 'Описание';
COMMENT ON COLUMN addhouse_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN addhouse_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN addhouse_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN addhouse_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS addhouse_types_isactive_idx ON addhouse_types USING btree (isactive);
