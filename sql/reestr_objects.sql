CREATE TABLE gar.reestr_objects (
  objectid BIGINT NOT NULL,
  createdate DATE NOT NULL,
  changeid BIGINT NOT NULL,
  levelid INT NOT NULL,
  updatedate DATE NOT NULL,
  objectguid UUID NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
);
COMMENT ON TABLE gar.reestr_objects IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN gar.reestr_objects.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN gar.reestr_objects.createdate IS 'Дата создания';
COMMENT ON COLUMN gar.reestr_objects.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.reestr_objects.levelid IS 'Уровень объекта';
COMMENT ON COLUMN gar.reestr_objects.updatedate IS 'Дата обновления';
COMMENT ON COLUMN gar.reestr_objects.objectguid IS 'GUID объекта';
COMMENT ON COLUMN gar.reestr_objects.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';
COMMENT ON COLUMN gar.reestr_objects.dir IS 'Код региона';

