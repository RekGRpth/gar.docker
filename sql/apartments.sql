CREATE TABLE apartments (
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

CREATE TABLE apartments_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT apartments_dir_check CHECK (dir = 01)) INHERITS (apartments);
CREATE TABLE apartments_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT apartments_dir_check CHECK (dir = 02)) INHERITS (apartments);
CREATE TABLE apartments_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT apartments_dir_check CHECK (dir = 03)) INHERITS (apartments);
CREATE TABLE apartments_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT apartments_dir_check CHECK (dir = 04)) INHERITS (apartments);
CREATE TABLE apartments_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT apartments_dir_check CHECK (dir = 05)) INHERITS (apartments);
CREATE TABLE apartments_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT apartments_dir_check CHECK (dir = 06)) INHERITS (apartments);
CREATE TABLE apartments_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT apartments_dir_check CHECK (dir = 07)) INHERITS (apartments);
CREATE TABLE apartments_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT apartments_dir_check CHECK (dir = 08)) INHERITS (apartments);
CREATE TABLE apartments_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT apartments_dir_check CHECK (dir = 09)) INHERITS (apartments);
CREATE TABLE apartments_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT apartments_dir_check CHECK (dir = 10)) INHERITS (apartments);
CREATE TABLE apartments_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT apartments_dir_check CHECK (dir = 11)) INHERITS (apartments);
CREATE TABLE apartments_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT apartments_dir_check CHECK (dir = 12)) INHERITS (apartments);
CREATE TABLE apartments_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT apartments_dir_check CHECK (dir = 13)) INHERITS (apartments);
CREATE TABLE apartments_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT apartments_dir_check CHECK (dir = 14)) INHERITS (apartments);
CREATE TABLE apartments_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT apartments_dir_check CHECK (dir = 15)) INHERITS (apartments);
CREATE TABLE apartments_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT apartments_dir_check CHECK (dir = 16)) INHERITS (apartments);
CREATE TABLE apartments_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT apartments_dir_check CHECK (dir = 17)) INHERITS (apartments);
CREATE TABLE apartments_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT apartments_dir_check CHECK (dir = 18)) INHERITS (apartments);
CREATE TABLE apartments_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT apartments_dir_check CHECK (dir = 19)) INHERITS (apartments);
CREATE TABLE apartments_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT apartments_dir_check CHECK (dir = 20)) INHERITS (apartments);
CREATE TABLE apartments_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT apartments_dir_check CHECK (dir = 21)) INHERITS (apartments);
CREATE TABLE apartments_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT apartments_dir_check CHECK (dir = 22)) INHERITS (apartments);
CREATE TABLE apartments_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT apartments_dir_check CHECK (dir = 23)) INHERITS (apartments);
CREATE TABLE apartments_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT apartments_dir_check CHECK (dir = 24)) INHERITS (apartments);
CREATE TABLE apartments_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT apartments_dir_check CHECK (dir = 25)) INHERITS (apartments);
CREATE TABLE apartments_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT apartments_dir_check CHECK (dir = 26)) INHERITS (apartments);
CREATE TABLE apartments_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT apartments_dir_check CHECK (dir = 27)) INHERITS (apartments);
CREATE TABLE apartments_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT apartments_dir_check CHECK (dir = 28)) INHERITS (apartments);
CREATE TABLE apartments_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT apartments_dir_check CHECK (dir = 29)) INHERITS (apartments);
CREATE TABLE apartments_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT apartments_dir_check CHECK (dir = 30)) INHERITS (apartments);
CREATE TABLE apartments_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT apartments_dir_check CHECK (dir = 31)) INHERITS (apartments);
CREATE TABLE apartments_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT apartments_dir_check CHECK (dir = 32)) INHERITS (apartments);
CREATE TABLE apartments_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT apartments_dir_check CHECK (dir = 33)) INHERITS (apartments);
CREATE TABLE apartments_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT apartments_dir_check CHECK (dir = 34)) INHERITS (apartments);
CREATE TABLE apartments_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT apartments_dir_check CHECK (dir = 35)) INHERITS (apartments);
CREATE TABLE apartments_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT apartments_dir_check CHECK (dir = 36)) INHERITS (apartments);
CREATE TABLE apartments_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT apartments_dir_check CHECK (dir = 37)) INHERITS (apartments);
CREATE TABLE apartments_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT apartments_dir_check CHECK (dir = 38)) INHERITS (apartments);
CREATE TABLE apartments_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT apartments_dir_check CHECK (dir = 39)) INHERITS (apartments);
CREATE TABLE apartments_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT apartments_dir_check CHECK (dir = 40)) INHERITS (apartments);
CREATE TABLE apartments_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT apartments_dir_check CHECK (dir = 41)) INHERITS (apartments);
CREATE TABLE apartments_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT apartments_dir_check CHECK (dir = 42)) INHERITS (apartments);
CREATE TABLE apartments_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT apartments_dir_check CHECK (dir = 43)) INHERITS (apartments);
CREATE TABLE apartments_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT apartments_dir_check CHECK (dir = 44)) INHERITS (apartments);
CREATE TABLE apartments_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT apartments_dir_check CHECK (dir = 45)) INHERITS (apartments);
CREATE TABLE apartments_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT apartments_dir_check CHECK (dir = 46)) INHERITS (apartments);
CREATE TABLE apartments_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT apartments_dir_check CHECK (dir = 47)) INHERITS (apartments);
CREATE TABLE apartments_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT apartments_dir_check CHECK (dir = 48)) INHERITS (apartments);
CREATE TABLE apartments_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT apartments_dir_check CHECK (dir = 49)) INHERITS (apartments);
CREATE TABLE apartments_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT apartments_dir_check CHECK (dir = 50)) INHERITS (apartments);
CREATE TABLE apartments_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT apartments_dir_check CHECK (dir = 51)) INHERITS (apartments);
CREATE TABLE apartments_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT apartments_dir_check CHECK (dir = 52)) INHERITS (apartments);
CREATE TABLE apartments_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT apartments_dir_check CHECK (dir = 53)) INHERITS (apartments);
CREATE TABLE apartments_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT apartments_dir_check CHECK (dir = 54)) INHERITS (apartments);
CREATE TABLE apartments_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT apartments_dir_check CHECK (dir = 55)) INHERITS (apartments);
CREATE TABLE apartments_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT apartments_dir_check CHECK (dir = 56)) INHERITS (apartments);
CREATE TABLE apartments_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT apartments_dir_check CHECK (dir = 57)) INHERITS (apartments);
CREATE TABLE apartments_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT apartments_dir_check CHECK (dir = 58)) INHERITS (apartments);
CREATE TABLE apartments_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT apartments_dir_check CHECK (dir = 59)) INHERITS (apartments);
CREATE TABLE apartments_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT apartments_dir_check CHECK (dir = 60)) INHERITS (apartments);
CREATE TABLE apartments_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT apartments_dir_check CHECK (dir = 61)) INHERITS (apartments);
CREATE TABLE apartments_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT apartments_dir_check CHECK (dir = 62)) INHERITS (apartments);
CREATE TABLE apartments_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT apartments_dir_check CHECK (dir = 63)) INHERITS (apartments);
CREATE TABLE apartments_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT apartments_dir_check CHECK (dir = 64)) INHERITS (apartments);
CREATE TABLE apartments_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT apartments_dir_check CHECK (dir = 65)) INHERITS (apartments);
CREATE TABLE apartments_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT apartments_dir_check CHECK (dir = 66)) INHERITS (apartments);
CREATE TABLE apartments_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT apartments_dir_check CHECK (dir = 67)) INHERITS (apartments);
CREATE TABLE apartments_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT apartments_dir_check CHECK (dir = 68)) INHERITS (apartments);
CREATE TABLE apartments_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT apartments_dir_check CHECK (dir = 69)) INHERITS (apartments);
CREATE TABLE apartments_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT apartments_dir_check CHECK (dir = 70)) INHERITS (apartments);
CREATE TABLE apartments_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT apartments_dir_check CHECK (dir = 71)) INHERITS (apartments);
CREATE TABLE apartments_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT apartments_dir_check CHECK (dir = 72)) INHERITS (apartments);
CREATE TABLE apartments_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT apartments_dir_check CHECK (dir = 73)) INHERITS (apartments);
CREATE TABLE apartments_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT apartments_dir_check CHECK (dir = 74)) INHERITS (apartments);
CREATE TABLE apartments_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT apartments_dir_check CHECK (dir = 75)) INHERITS (apartments);
CREATE TABLE apartments_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT apartments_dir_check CHECK (dir = 76)) INHERITS (apartments);
CREATE TABLE apartments_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT apartments_dir_check CHECK (dir = 77)) INHERITS (apartments);
CREATE TABLE apartments_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT apartments_dir_check CHECK (dir = 78)) INHERITS (apartments);
CREATE TABLE apartments_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT apartments_dir_check CHECK (dir = 79)) INHERITS (apartments);
CREATE TABLE apartments_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT apartments_dir_check CHECK (dir = 80)) INHERITS (apartments);
CREATE TABLE apartments_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT apartments_dir_check CHECK (dir = 81)) INHERITS (apartments);
CREATE TABLE apartments_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT apartments_dir_check CHECK (dir = 82)) INHERITS (apartments);
CREATE TABLE apartments_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT apartments_dir_check CHECK (dir = 83)) INHERITS (apartments);
CREATE TABLE apartments_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT apartments_dir_check CHECK (dir = 84)) INHERITS (apartments);
CREATE TABLE apartments_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT apartments_dir_check CHECK (dir = 85)) INHERITS (apartments);
CREATE TABLE apartments_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT apartments_dir_check CHECK (dir = 86)) INHERITS (apartments);
CREATE TABLE apartments_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT apartments_dir_check CHECK (dir = 87)) INHERITS (apartments);
CREATE TABLE apartments_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT apartments_dir_check CHECK (dir = 88)) INHERITS (apartments);
CREATE TABLE apartments_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT apartments_dir_check CHECK (dir = 89)) INHERITS (apartments);
CREATE TABLE apartments_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT apartments_dir_check CHECK (dir = 90)) INHERITS (apartments);
CREATE TABLE apartments_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT apartments_dir_check CHECK (dir = 91)) INHERITS (apartments);
CREATE TABLE apartments_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT apartments_dir_check CHECK (dir = 92)) INHERITS (apartments);
CREATE TABLE apartments_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT apartments_dir_check CHECK (dir = 93)) INHERITS (apartments);
CREATE TABLE apartments_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT apartments_dir_check CHECK (dir = 94)) INHERITS (apartments);
CREATE TABLE apartments_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT apartments_dir_check CHECK (dir = 95)) INHERITS (apartments);
CREATE TABLE apartments_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT apartments_dir_check CHECK (dir = 96)) INHERITS (apartments);
CREATE TABLE apartments_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT apartments_dir_check CHECK (dir = 97)) INHERITS (apartments);
CREATE TABLE apartments_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT apartments_dir_check CHECK (dir = 98)) INHERITS (apartments);
CREATE TABLE apartments_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT apartments_dir_check CHECK (dir = 99)) INHERITS (apartments);