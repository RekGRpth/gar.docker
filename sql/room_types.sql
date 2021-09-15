CREATE TABLE IF NOT EXISTS room_types (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    shortname VARCHAR(50),
    "desc" VARCHAR(250),
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE room_types IS 'Сведения по типам комнат';
COMMENT ON COLUMN room_types.id IS 'Идентификатор типа (ключ)';
COMMENT ON COLUMN room_types.name IS 'Наименование';
COMMENT ON COLUMN room_types.shortname IS 'Краткое наименование';
COMMENT ON COLUMN room_types.desc IS 'Описание';
COMMENT ON COLUMN room_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN room_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN room_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN room_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS room_types_isactive_idx ON room_types USING btree (isactive);
