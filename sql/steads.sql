CREATE TABLE steads (
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
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL
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

CREATE TABLE steads_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT steads_dir_check CHECK (dir = 01)) INHERITS (steads);
CREATE TABLE steads_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT steads_dir_check CHECK (dir = 02)) INHERITS (steads);
CREATE TABLE steads_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT steads_dir_check CHECK (dir = 03)) INHERITS (steads);
CREATE TABLE steads_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT steads_dir_check CHECK (dir = 04)) INHERITS (steads);
CREATE TABLE steads_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT steads_dir_check CHECK (dir = 05)) INHERITS (steads);
CREATE TABLE steads_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT steads_dir_check CHECK (dir = 06)) INHERITS (steads);
CREATE TABLE steads_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT steads_dir_check CHECK (dir = 07)) INHERITS (steads);
CREATE TABLE steads_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT steads_dir_check CHECK (dir = 08)) INHERITS (steads);
CREATE TABLE steads_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT steads_dir_check CHECK (dir = 09)) INHERITS (steads);
CREATE TABLE steads_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT steads_dir_check CHECK (dir = 10)) INHERITS (steads);
CREATE TABLE steads_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT steads_dir_check CHECK (dir = 11)) INHERITS (steads);
CREATE TABLE steads_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT steads_dir_check CHECK (dir = 12)) INHERITS (steads);
CREATE TABLE steads_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT steads_dir_check CHECK (dir = 13)) INHERITS (steads);
CREATE TABLE steads_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT steads_dir_check CHECK (dir = 14)) INHERITS (steads);
CREATE TABLE steads_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT steads_dir_check CHECK (dir = 15)) INHERITS (steads);
CREATE TABLE steads_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT steads_dir_check CHECK (dir = 16)) INHERITS (steads);
CREATE TABLE steads_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT steads_dir_check CHECK (dir = 17)) INHERITS (steads);
CREATE TABLE steads_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT steads_dir_check CHECK (dir = 18)) INHERITS (steads);
CREATE TABLE steads_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT steads_dir_check CHECK (dir = 19)) INHERITS (steads);
CREATE TABLE steads_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT steads_dir_check CHECK (dir = 20)) INHERITS (steads);
CREATE TABLE steads_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT steads_dir_check CHECK (dir = 21)) INHERITS (steads);
CREATE TABLE steads_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT steads_dir_check CHECK (dir = 22)) INHERITS (steads);
CREATE TABLE steads_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT steads_dir_check CHECK (dir = 23)) INHERITS (steads);
CREATE TABLE steads_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT steads_dir_check CHECK (dir = 24)) INHERITS (steads);
CREATE TABLE steads_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT steads_dir_check CHECK (dir = 25)) INHERITS (steads);
CREATE TABLE steads_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT steads_dir_check CHECK (dir = 26)) INHERITS (steads);
CREATE TABLE steads_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT steads_dir_check CHECK (dir = 27)) INHERITS (steads);
CREATE TABLE steads_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT steads_dir_check CHECK (dir = 28)) INHERITS (steads);
CREATE TABLE steads_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT steads_dir_check CHECK (dir = 29)) INHERITS (steads);
CREATE TABLE steads_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT steads_dir_check CHECK (dir = 30)) INHERITS (steads);
CREATE TABLE steads_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT steads_dir_check CHECK (dir = 31)) INHERITS (steads);
CREATE TABLE steads_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT steads_dir_check CHECK (dir = 32)) INHERITS (steads);
CREATE TABLE steads_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT steads_dir_check CHECK (dir = 33)) INHERITS (steads);
CREATE TABLE steads_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT steads_dir_check CHECK (dir = 34)) INHERITS (steads);
CREATE TABLE steads_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT steads_dir_check CHECK (dir = 35)) INHERITS (steads);
CREATE TABLE steads_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT steads_dir_check CHECK (dir = 36)) INHERITS (steads);
CREATE TABLE steads_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT steads_dir_check CHECK (dir = 37)) INHERITS (steads);
CREATE TABLE steads_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT steads_dir_check CHECK (dir = 38)) INHERITS (steads);
CREATE TABLE steads_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT steads_dir_check CHECK (dir = 39)) INHERITS (steads);
CREATE TABLE steads_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT steads_dir_check CHECK (dir = 40)) INHERITS (steads);
CREATE TABLE steads_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT steads_dir_check CHECK (dir = 41)) INHERITS (steads);
CREATE TABLE steads_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT steads_dir_check CHECK (dir = 42)) INHERITS (steads);
CREATE TABLE steads_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT steads_dir_check CHECK (dir = 43)) INHERITS (steads);
CREATE TABLE steads_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT steads_dir_check CHECK (dir = 44)) INHERITS (steads);
CREATE TABLE steads_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT steads_dir_check CHECK (dir = 45)) INHERITS (steads);
CREATE TABLE steads_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT steads_dir_check CHECK (dir = 46)) INHERITS (steads);
CREATE TABLE steads_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT steads_dir_check CHECK (dir = 47)) INHERITS (steads);
CREATE TABLE steads_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT steads_dir_check CHECK (dir = 48)) INHERITS (steads);
CREATE TABLE steads_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT steads_dir_check CHECK (dir = 49)) INHERITS (steads);
CREATE TABLE steads_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT steads_dir_check CHECK (dir = 50)) INHERITS (steads);
CREATE TABLE steads_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT steads_dir_check CHECK (dir = 51)) INHERITS (steads);
CREATE TABLE steads_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT steads_dir_check CHECK (dir = 52)) INHERITS (steads);
CREATE TABLE steads_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT steads_dir_check CHECK (dir = 53)) INHERITS (steads);
CREATE TABLE steads_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT steads_dir_check CHECK (dir = 54)) INHERITS (steads);
CREATE TABLE steads_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT steads_dir_check CHECK (dir = 55)) INHERITS (steads);
CREATE TABLE steads_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT steads_dir_check CHECK (dir = 56)) INHERITS (steads);
CREATE TABLE steads_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT steads_dir_check CHECK (dir = 57)) INHERITS (steads);
CREATE TABLE steads_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT steads_dir_check CHECK (dir = 58)) INHERITS (steads);
CREATE TABLE steads_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT steads_dir_check CHECK (dir = 59)) INHERITS (steads);
CREATE TABLE steads_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT steads_dir_check CHECK (dir = 60)) INHERITS (steads);
CREATE TABLE steads_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT steads_dir_check CHECK (dir = 61)) INHERITS (steads);
CREATE TABLE steads_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT steads_dir_check CHECK (dir = 62)) INHERITS (steads);
CREATE TABLE steads_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT steads_dir_check CHECK (dir = 63)) INHERITS (steads);
CREATE TABLE steads_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT steads_dir_check CHECK (dir = 64)) INHERITS (steads);
CREATE TABLE steads_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT steads_dir_check CHECK (dir = 65)) INHERITS (steads);
CREATE TABLE steads_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT steads_dir_check CHECK (dir = 66)) INHERITS (steads);
CREATE TABLE steads_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT steads_dir_check CHECK (dir = 67)) INHERITS (steads);
CREATE TABLE steads_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT steads_dir_check CHECK (dir = 68)) INHERITS (steads);
CREATE TABLE steads_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT steads_dir_check CHECK (dir = 69)) INHERITS (steads);
CREATE TABLE steads_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT steads_dir_check CHECK (dir = 70)) INHERITS (steads);
CREATE TABLE steads_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT steads_dir_check CHECK (dir = 71)) INHERITS (steads);
CREATE TABLE steads_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT steads_dir_check CHECK (dir = 72)) INHERITS (steads);
CREATE TABLE steads_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT steads_dir_check CHECK (dir = 73)) INHERITS (steads);
CREATE TABLE steads_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT steads_dir_check CHECK (dir = 74)) INHERITS (steads);
CREATE TABLE steads_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT steads_dir_check CHECK (dir = 75)) INHERITS (steads);
CREATE TABLE steads_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT steads_dir_check CHECK (dir = 76)) INHERITS (steads);
CREATE TABLE steads_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT steads_dir_check CHECK (dir = 77)) INHERITS (steads);
CREATE TABLE steads_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT steads_dir_check CHECK (dir = 78)) INHERITS (steads);
CREATE TABLE steads_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT steads_dir_check CHECK (dir = 79)) INHERITS (steads);
CREATE TABLE steads_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT steads_dir_check CHECK (dir = 80)) INHERITS (steads);
CREATE TABLE steads_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT steads_dir_check CHECK (dir = 81)) INHERITS (steads);
CREATE TABLE steads_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT steads_dir_check CHECK (dir = 82)) INHERITS (steads);
CREATE TABLE steads_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT steads_dir_check CHECK (dir = 83)) INHERITS (steads);
CREATE TABLE steads_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT steads_dir_check CHECK (dir = 84)) INHERITS (steads);
CREATE TABLE steads_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT steads_dir_check CHECK (dir = 85)) INHERITS (steads);
CREATE TABLE steads_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT steads_dir_check CHECK (dir = 86)) INHERITS (steads);
CREATE TABLE steads_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT steads_dir_check CHECK (dir = 87)) INHERITS (steads);
CREATE TABLE steads_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT steads_dir_check CHECK (dir = 88)) INHERITS (steads);
CREATE TABLE steads_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT steads_dir_check CHECK (dir = 89)) INHERITS (steads);
CREATE TABLE steads_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT steads_dir_check CHECK (dir = 90)) INHERITS (steads);
CREATE TABLE steads_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT steads_dir_check CHECK (dir = 91)) INHERITS (steads);
CREATE TABLE steads_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT steads_dir_check CHECK (dir = 92)) INHERITS (steads);
CREATE TABLE steads_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT steads_dir_check CHECK (dir = 93)) INHERITS (steads);
CREATE TABLE steads_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT steads_dir_check CHECK (dir = 94)) INHERITS (steads);
CREATE TABLE steads_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT steads_dir_check CHECK (dir = 95)) INHERITS (steads);
CREATE TABLE steads_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT steads_dir_check CHECK (dir = 96)) INHERITS (steads);
CREATE TABLE steads_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT steads_dir_check CHECK (dir = 97)) INHERITS (steads);
CREATE TABLE steads_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT steads_dir_check CHECK (dir = 98)) INHERITS (steads);
CREATE TABLE steads_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT steads_dir_check CHECK (dir = 99)) INHERITS (steads);
