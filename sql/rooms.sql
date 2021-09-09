CREATE TABLE IF NOT EXISTS rooms (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    objectguid UUID NOT NULL,
    changeid BIGINT NOT NULL,
    number VARCHAR(50) NOT NULL,
    roomtype INT NOT NULL,
    opertypeid INT NOT NULL,
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual SMALLINT NOT NULL,
    isactive SMALLINT NOT NULL
);
COMMENT ON TABLE rooms IS 'Сведения по комнатам';
COMMENT ON COLUMN rooms.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN rooms.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN rooms.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN rooms.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN rooms.number IS 'Номер комнаты или офиса';
COMMENT ON COLUMN rooms.roomtype IS 'Тип комнаты или офиса';
COMMENT ON COLUMN rooms.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN rooms.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN rooms.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN rooms.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN rooms.startdate IS 'Начало действия записи';
COMMENT ON COLUMN rooms.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN rooms.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN rooms.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS rooms_objectid_idx ON rooms USING btree (objectid);
CREATE INDEX IF NOT EXISTS rooms_roomtype_idx ON rooms USING btree (roomtype);
CREATE INDEX IF NOT EXISTS rooms_startdate_idx ON rooms USING btree (startdate);
CREATE INDEX IF NOT EXISTS rooms_enddate_idx ON rooms USING btree (enddate);
CREATE INDEX IF NOT EXISTS rooms_isactual_idx ON rooms USING btree (isactual);
CREATE INDEX IF NOT EXISTS rooms_isactive_idx ON rooms USING btree (isactive);
