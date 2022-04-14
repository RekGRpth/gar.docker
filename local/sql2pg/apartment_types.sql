CREATE TABLE IF NOT EXISTS apartment_types (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    shortname VARCHAR,
    "desc" VARCHAR,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE apartment_types IS 'Сведения по типам помещений';
COMMENT ON COLUMN apartment_types.id IS 'Идентификатор типа (ключ)';
COMMENT ON COLUMN apartment_types.name IS 'Наименование';
COMMENT ON COLUMN apartment_types.shortname IS 'Краткое наименование';
COMMENT ON COLUMN apartment_types.desc IS 'Описание';
COMMENT ON COLUMN apartment_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartment_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN apartment_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN apartment_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS apartment_types_isactive_idx ON apartment_types USING btree (isactive) WHERE NOT isactive;
