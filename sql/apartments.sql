CREATE TABLE gar.apartments (
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
COMMENT ON TABLE gar.apartments IS 'Сведения по помещениям';
COMMENT ON COLUMN gar.apartments.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN gar.apartments.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN gar.apartments.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN gar.apartments.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.apartments.number IS 'Номер комнаты';
COMMENT ON COLUMN gar.apartments.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN gar.apartments.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN gar.apartments.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN gar.apartments.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN gar.apartments.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.apartments.startdate IS 'Начало действия записи';
COMMENT ON COLUMN gar.apartments.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN gar.apartments.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN gar.apartments.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE gar.apartments_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT CHECK (dir = 01)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT CHECK (dir = 02)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT CHECK (dir = 03)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT CHECK (dir = 04)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT CHECK (dir = 05)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT CHECK (dir = 06)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT CHECK (dir = 07)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT CHECK (dir = 08)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT CHECK (dir = 09)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT CHECK (dir = 10)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT CHECK (dir = 11)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT CHECK (dir = 12)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT CHECK (dir = 13)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT CHECK (dir = 14)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT CHECK (dir = 15)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT CHECK (dir = 16)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT CHECK (dir = 17)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT CHECK (dir = 18)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT CHECK (dir = 19)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT CHECK (dir = 20)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT CHECK (dir = 21)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT CHECK (dir = 22)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT CHECK (dir = 23)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT CHECK (dir = 24)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT CHECK (dir = 25)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT CHECK (dir = 26)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT CHECK (dir = 27)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT CHECK (dir = 28)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT CHECK (dir = 29)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT CHECK (dir = 30)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT CHECK (dir = 31)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT CHECK (dir = 32)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT CHECK (dir = 33)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT CHECK (dir = 34)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT CHECK (dir = 35)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT CHECK (dir = 36)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT CHECK (dir = 37)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT CHECK (dir = 38)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT CHECK (dir = 39)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT CHECK (dir = 40)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT CHECK (dir = 41)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT CHECK (dir = 42)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT CHECK (dir = 43)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT CHECK (dir = 44)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT CHECK (dir = 45)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT CHECK (dir = 46)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT CHECK (dir = 47)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT CHECK (dir = 48)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT CHECK (dir = 49)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT CHECK (dir = 50)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT CHECK (dir = 51)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT CHECK (dir = 52)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT CHECK (dir = 53)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT CHECK (dir = 54)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT CHECK (dir = 55)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT CHECK (dir = 56)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT CHECK (dir = 57)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT CHECK (dir = 58)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT CHECK (dir = 59)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT CHECK (dir = 60)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT CHECK (dir = 61)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT CHECK (dir = 62)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT CHECK (dir = 63)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT CHECK (dir = 64)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT CHECK (dir = 65)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT CHECK (dir = 66)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT CHECK (dir = 67)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT CHECK (dir = 68)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT CHECK (dir = 69)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT CHECK (dir = 70)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT CHECK (dir = 71)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT CHECK (dir = 72)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT CHECK (dir = 73)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT CHECK (dir = 74)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT CHECK (dir = 75)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT CHECK (dir = 76)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT CHECK (dir = 77)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT CHECK (dir = 78)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT CHECK (dir = 79)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT CHECK (dir = 80)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT CHECK (dir = 81)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT CHECK (dir = 82)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT CHECK (dir = 83)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT CHECK (dir = 84)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT CHECK (dir = 85)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT CHECK (dir = 86)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT CHECK (dir = 87)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT CHECK (dir = 88)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT CHECK (dir = 89)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT CHECK (dir = 90)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT CHECK (dir = 91)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT CHECK (dir = 92)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT CHECK (dir = 93)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT CHECK (dir = 94)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT CHECK (dir = 95)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT CHECK (dir = 96)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT CHECK (dir = 97)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT CHECK (dir = 98)) INHERITS (gar.apartments);
CREATE TABLE gar.apartments_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT CHECK (dir = 99)) INHERITS (gar.apartments);
