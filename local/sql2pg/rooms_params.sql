CREATE TABLE IF NOT EXISTS rooms_params (
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
COMMENT ON TABLE rooms_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN rooms_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN rooms_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN rooms_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN rooms_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN rooms_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN rooms_params.value IS 'Значение параметра';
COMMENT ON COLUMN rooms_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN rooms_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN rooms_params.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS rooms_params_objectid_idx ON rooms_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_params_typeid_idx ON rooms_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS rooms_params_startdate_idx ON rooms_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_params_enddate_idx ON rooms_params USING btree (enddate);
