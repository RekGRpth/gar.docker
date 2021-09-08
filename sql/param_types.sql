CREATE TABLE IF NOT EXISTS param_types (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  code VARCHAR(50) NOT NULL,
  "desc" VARCHAR(120),
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
