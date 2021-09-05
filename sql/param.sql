CREATE TABLE param (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  changeid BIGINT,
  changeidend BIGINT NOT NULL,
  typeid INT NOT NULL,
  value VARCHAR(8000) NOT NULL,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL
);
COMMENT ON TABLE param IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN param.id IS 'Идентификатор записи';
COMMENT ON COLUMN param.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN param.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN param.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN param.typeid IS 'Тип параметра';
COMMENT ON COLUMN param.value IS 'Значение параметра';
COMMENT ON COLUMN param.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN param.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN param.enddate IS 'Дата окончания действия записи';

