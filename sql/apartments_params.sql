CREATE TABLE gar.apartments_params (
    param TEXT DEFAULT 'apartments',
    CONSTRAINT CHECK (param = 'apartments')
) INHERITS (gar.param);
COMMENT ON TABLE gar.apartments_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.apartments_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.apartments_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.apartments_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.apartments_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.apartments_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.apartments_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.apartments_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.apartments_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.apartments_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.apartments_params.dir IS 'Код региона';

