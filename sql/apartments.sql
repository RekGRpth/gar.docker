CREATE TABLE IF NOT EXISTS apartments (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    objectguid UUID NOT NULL,
    changeid BIGINT NOT NULL,
    number VARCHAR(50) NOT NULL,
    aparttype INT NOT NULL,
    opertypeid BIGINT NOT NULL,
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual SMALLINT NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE apartments IS 'Сведения по помещениям';
COMMENT ON COLUMN apartments.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN apartments.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN apartments.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN apartments.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN apartments.number IS 'Номер комнаты';
COMMENT ON COLUMN apartments.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN apartments.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN apartments.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN apartments.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN apartments.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartments.startdate IS 'Начало действия записи';
COMMENT ON COLUMN apartments.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN apartments.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN apartments.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS apartments_objectid_idx ON apartments USING btree (objectid);
CREATE INDEX IF NOT EXISTS apartments_objectguid_idx ON apartments USING btree (objectguid);
CREATE INDEX IF NOT EXISTS apartments_aparttype_idx ON apartments USING btree (aparttype);
CREATE INDEX IF NOT EXISTS apartments_startdate_idx ON apartments USING btree (startdate);
CREATE INDEX IF NOT EXISTS apartments_enddate_idx ON apartments USING btree (enddate);
CREATE INDEX IF NOT EXISTS apartments_isactual_idx ON apartments USING btree (isactual);
CREATE INDEX IF NOT EXISTS apartments_isactive_idx ON apartments USING btree (isactive);
