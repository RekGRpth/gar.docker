CREATE TABLE operation_types (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  shortname VARCHAR(100),
  "desc" VARCHAR(250),
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE operation_types IS 'Сведения по статусу действия';
COMMENT ON COLUMN operation_types.id IS 'Идентификатор статуса (ключ)';
COMMENT ON COLUMN operation_types.name IS 'Наименование';
COMMENT ON COLUMN operation_types.shortname IS 'Краткое наименование';
COMMENT ON COLUMN operation_types.desc IS 'Описание';
COMMENT ON COLUMN operation_types.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN operation_types.startdate IS 'Начало действия записи';
COMMENT ON COLUMN operation_types.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN operation_types.isactive IS 'Статус активности';

