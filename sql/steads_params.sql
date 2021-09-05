CREATE TABLE gar.steads_params (
    param TEXT NOT NULL DEFAULT 'steads',
    CONSTRAINT CHECK (param = 'steads')
) INHERITS (gar.param);
COMMENT ON TABLE gar.steads_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.steads_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.steads_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.steads_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.steads_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.steads_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.steads_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.steads_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.steads_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.steads_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.steads_params.dir IS 'Код региона';

