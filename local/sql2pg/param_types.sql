CREATE TABLE IF NOT EXISTS param_types (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    code VARCHAR NOT NULL,
    "desc" VARCHAR,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE param_types IS 'Сведения по типу параметра';
COMMENT ON COLUMN param_types.id IS 'Идентификатор типа параметра (ключ)';
COMMENT ON COLUMN param_types.name IS 'Наименование';
COMMENT ON COLUMN param_types.code IS 'Краткое наименование';
COMMENT ON COLUMN param_types.desc IS 'Описание';
COMMENT ON COLUMN param_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN param_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN param_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN param_types.isactive IS 'Статус активности';
CREATE INDEX IF NOT EXISTS param_types_name_idx ON param_types USING btree (name);
CREATE INDEX IF NOT EXISTS param_types_isactive_idx ON param_types USING btree (isactive) WHERE NOT isactive;
