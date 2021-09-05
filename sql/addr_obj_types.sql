CREATE TABLE addr_obj_types (
  id INT NOT NULL PRIMARY KEY,
  level INT NOT NULL,
  shortname VARCHAR(50) NOT NULL,
  name VARCHAR(250) NOT NULL,
  "desc" VARCHAR(250),
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

