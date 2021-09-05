CREATE TABLE gar.addr_obj_params (
    param TEXT DEFAULT 'addr_obj',
    CONSTRAINT CHECK (param = 'addr_obj')
) INHERITS (gar.param);
COMMENT ON TABLE gar.addr_obj_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN gar.addr_obj_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.addr_obj_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN gar.addr_obj_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.addr_obj_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN gar.addr_obj_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN gar.addr_obj_params.value IS 'Значение параметра';
COMMENT ON COLUMN gar.addr_obj_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.addr_obj_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN gar.addr_obj_params.enddate IS 'Дата окончания действия записи';
COMMENT ON COLUMN gar.addr_obj_params.dir IS 'Код региона';

