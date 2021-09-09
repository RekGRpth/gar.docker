CREATE TABLE IF NOT EXISTS houses (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    objectguid UUID NOT NULL,
    changeid BIGINT NOT NULL,
    housenum VARCHAR(50),
    addnum1 VARCHAR(50),
    addnum2 VARCHAR(50),
    housetype INT,
    addtype1 INT,
    addtype2 INT,
    opertypeid INT NOT NULL,
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual SMALLINT NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE houses IS 'Сведения по номерам домов улиц городов и населенных пунктов';
COMMENT ON COLUMN houses.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN houses.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN houses.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN houses.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN houses.housenum IS 'Основной номер дома';
COMMENT ON COLUMN houses.addnum1 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses.addnum2 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses.housetype IS 'Основной тип дома';
COMMENT ON COLUMN houses.addtype1 IS 'Дополнительный тип дома 1';
COMMENT ON COLUMN houses.addtype2 IS 'Дополнительный тип дома 2';
COMMENT ON COLUMN houses.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN houses.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN houses.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN houses.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN houses.startdate IS 'Начало действия записи';
COMMENT ON COLUMN houses.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN houses.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN houses.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS houses_objectid_idx ON houses USING btree (objectid);
CREATE INDEX IF NOT EXISTS houses_housetype_idx ON houses USING btree (housetype);
CREATE INDEX IF NOT EXISTS houses_startdate_idx ON houses USING btree (startdate);
CREATE INDEX IF NOT EXISTS houses_enddate_idx ON houses USING btree (enddate);
CREATE INDEX IF NOT EXISTS houses_isactual_idx ON houses USING btree (isactual);
CREATE INDEX IF NOT EXISTS houses_isactive_idx ON houses USING btree (isactive);
