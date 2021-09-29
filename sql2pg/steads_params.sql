CREATE TABLE IF NOT EXISTS steads_params (
    id BIGINT NOT NULL,
    objectid BIGINT NOT NULL,
    changeid BIGINT,
    changeidend BIGINT NOT NULL,
    typeid INT NOT NULL,
    value VARCHAR(8000) NOT NULL,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    region smallint NOT NULL,
    CONSTRAINT steads_params_pkey PRIMARY KEY (id, region)
) PARTITION BY LIST (region);
COMMENT ON TABLE steads_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN steads_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN steads_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN steads_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN steads_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN steads_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN steads_params.value IS 'Значение параметра';
COMMENT ON COLUMN steads_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN steads_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN steads_params.enddate IS 'Дата окончания действия записи';
CREATE INDEX IF NOT EXISTS steads_params_objectid_idx ON steads_params USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_params_typeid_idx ON steads_params USING btree (typeid);
CREATE INDEX IF NOT EXISTS steads_params_startdate_idx ON steads_params USING btree (startdate);
CREATE INDEX IF NOT EXISTS steads_params_enddate_idx ON steads_params USING btree (enddate);
