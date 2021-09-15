CREATE TABLE IF NOT EXISTS carplaces (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    objectguid UUID NOT NULL,
    changeid BIGINT NOT NULL,
    number VARCHAR(50) NOT NULL,
    opertypeid INT NOT NULL,
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual BOOLEAN NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE carplaces IS 'Сведения по машино-местам';
COMMENT ON COLUMN carplaces.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN carplaces.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN carplaces.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN carplaces.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN carplaces.number IS 'Номер машиноместа';
COMMENT ON COLUMN carplaces.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN carplaces.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN carplaces.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN carplaces.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN carplaces.startdate IS 'Начало действия записи';
COMMENT ON COLUMN carplaces.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN carplaces.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN carplaces.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS carplaces_objectid_idx ON carplaces USING btree (objectid);
CREATE INDEX IF NOT EXISTS carplaces_objectguid_idx ON carplaces USING btree (objectguid);
CREATE INDEX IF NOT EXISTS carplaces_isactive_idx ON carplaces USING btree (isactive);
