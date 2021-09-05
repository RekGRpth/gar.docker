CREATE TABLE gar.carplaces_params (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  changeid BIGINT,
  changeidend BIGINT NOT NULL,
  typeid INT NOT NULL,
  value VARCHAR(8000) NOT NULL,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  dir SMALLINT NOT NULL
);
COMMENT ON TABLE gar.carplaces_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.carplaces_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.carplaces_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.carplaces_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.carplaces_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.carplaces_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.carplaces_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.carplaces_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.carplaces_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.carplaces_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.carplaces_params.dir IS 'Код региона';

