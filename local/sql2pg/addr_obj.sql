CREATE TABLE IF NOT EXISTS addr_obj (
    id BIGINT NOT NULL PRIMARY KEY,
    objectid BIGINT NOT NULL,
    objectguid UUID NOT NULL,
    changeid BIGINT NOT NULL,
    name VARCHAR NOT NULL,
    typename VARCHAR NOT NULL,
    level INT NOT NULL,
    opertypeid INT NOT NULL,
    previd BIGINT,
    nextid BIGINT,
    updatedate DATE NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    isactual BOOLEAN NOT NULL,
    isactive BOOLEAN NOT NULL
);
COMMENT ON TABLE addr_obj IS 'Сведения классификатора адресообразующих элементов';
COMMENT ON COLUMN addr_obj.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN addr_obj.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN addr_obj.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN addr_obj.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN addr_obj.name IS 'Наименование';
COMMENT ON COLUMN addr_obj.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN addr_obj.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN addr_obj.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN addr_obj.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN addr_obj.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN addr_obj.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN addr_obj.startdate IS 'Начало действия записи';
COMMENT ON COLUMN addr_obj.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN addr_obj.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN addr_obj.isactive IS 'Признак действующего адресного объекта';
CREATE INDEX IF NOT EXISTS addr_obj_objectid_idx ON addr_obj USING btree (objectid);
CREATE INDEX IF NOT EXISTS addr_obj_objectguid_idx ON addr_obj USING btree (objectguid);
CREATE INDEX IF NOT EXISTS addr_obj_typename_idx ON addr_obj USING btree (typename);
CREATE INDEX IF NOT EXISTS addr_obj_level_idx ON addr_obj USING btree (level);
CREATE INDEX IF NOT EXISTS addr_obj_isactive_idx ON addr_obj USING btree (isactive) WHERE NOT isactive;
