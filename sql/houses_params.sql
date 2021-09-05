CREATE TABLE gar.houses_params (
    param TEXT DEFAULT 'houses',
    CONSTRAINT CHECK (param = 'houses')
) INHERITS (gar.param);
COMMENT ON TABLE gar.houses_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.houses_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.houses_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.houses_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.houses_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.houses_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.houses_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.houses_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.houses_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.houses_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.houses_params.dir IS 'Код региона';

