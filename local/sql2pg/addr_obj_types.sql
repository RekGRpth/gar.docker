CREATE TABLE IF NOT EXISTS addr_obj_types (
    id INT NOT NULL PRIMARY KEY,
    level INT NOT NULL,
    shortname VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    "desc" VARCHAR,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE addr_obj_types IS 'Сведения по типам адресных объектов';
COMMENT ON COLUMN addr_obj_types.id IS 'Идентификатор записи';
COMMENT ON COLUMN addr_obj_types.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN addr_obj_types.shortname IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN addr_obj_types.name IS 'Полное наименование типа объекта';
COMMENT ON COLUMN addr_obj_types.desc IS 'Описание';
COMMENT ON COLUMN addr_obj_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN addr_obj_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN addr_obj_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN addr_obj_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS addr_obj_types_level_idx ON addr_obj_types USING btree (level);
CREATE INDEX IF NOT EXISTS addr_obj_types_shortname_idx ON addr_obj_types USING btree (shortname);
CREATE INDEX IF NOT EXISTS addr_obj_types_isactive_idx ON addr_obj_types USING btree (isactive) WHERE NOT isactive;
