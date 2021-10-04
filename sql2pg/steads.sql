CREATE TABLE IF NOT EXISTS steads (
    id INT NOT NULL PRIMARY KEY,
    objectid INT NOT NULL,
    objectguid UUID NOT NULL,
    changeid INT NOT NULL,
    number VARCHAR(250) NOT NULL,
    opertypeid VARCHAR(2) NOT NULL,
    previd INT,
    nextid INT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual BOOLEAN NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE steads IS 'Сведения по земельным участкам';
COMMENT ON COLUMN steads.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN steads.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN steads.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN steads.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN steads.number IS 'Номер земельного участка';
COMMENT ON COLUMN steads.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN steads.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN steads.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN steads.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN steads.startdate IS 'Начало действия записи';
COMMENT ON COLUMN steads.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN steads.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN steads.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS steads_objectid_idx ON steads USING btree (objectid);
CREATE INDEX IF NOT EXISTS steads_objectguid_idx ON steads USING btree (objectguid);
CREATE INDEX IF NOT EXISTS steads_isactive_idx ON steads USING btree (isactive) WHERE NOT isactive;
