CREATE TABLE gar.rooms_params (
    param TEXT NOT NULL DEFAULT 'rooms',
    CONSTRAINT CHECK (param = 'rooms')
) INHERITS (gar.param);
COMMENT ON TABLE gar.rooms_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.rooms_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.rooms_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.rooms_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.rooms_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.rooms_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.rooms_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.rooms_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.rooms_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.rooms_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.rooms_params.dir IS 'Код региона';

