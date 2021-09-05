CREATE TABLE gar.addr_obj (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  name VARCHAR(250) NOT NULL,
  typename VARCHAR(50) NOT NULL,
  level VARCHAR(10) NOT NULL,
  opertypeid INT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
);
COMMENT ON TABLE gar.addr_obj IS 'Сведения классификатора адресообразующих элементов';
COMMENT ON COLUMN gar.addr_obj.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN gar.addr_obj.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN gar.addr_obj.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN gar.addr_obj.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.addr_obj.name IS 'Наименование';
COMMENT ON COLUMN gar.addr_obj.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN gar.addr_obj.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN gar.addr_obj.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN gar.addr_obj.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN gar.addr_obj.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN gar.addr_obj.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.addr_obj.startdate IS 'Начало действия записи';
COMMENT ON COLUMN gar.addr_obj.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN gar.addr_obj.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN gar.addr_obj.isactive IS 'Признак действующего адресного объекта';
COMMENT ON COLUMN gar.addr_obj.dir IS 'Код региона';

