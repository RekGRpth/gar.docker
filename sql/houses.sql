CREATE TABLE houses (
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

CREATE TABLE houses_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT houses_dir_check CHECK (dir = 01)) INHERITS (houses);
CREATE TABLE houses_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT houses_dir_check CHECK (dir = 02)) INHERITS (houses);
CREATE TABLE houses_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT houses_dir_check CHECK (dir = 03)) INHERITS (houses);
CREATE TABLE houses_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT houses_dir_check CHECK (dir = 04)) INHERITS (houses);
CREATE TABLE houses_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT houses_dir_check CHECK (dir = 05)) INHERITS (houses);
CREATE TABLE houses_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT houses_dir_check CHECK (dir = 06)) INHERITS (houses);
CREATE TABLE houses_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT houses_dir_check CHECK (dir = 07)) INHERITS (houses);
CREATE TABLE houses_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT houses_dir_check CHECK (dir = 08)) INHERITS (houses);
CREATE TABLE houses_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT houses_dir_check CHECK (dir = 09)) INHERITS (houses);
CREATE TABLE houses_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT houses_dir_check CHECK (dir = 10)) INHERITS (houses);
CREATE TABLE houses_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT houses_dir_check CHECK (dir = 11)) INHERITS (houses);
CREATE TABLE houses_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT houses_dir_check CHECK (dir = 12)) INHERITS (houses);
CREATE TABLE houses_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT houses_dir_check CHECK (dir = 13)) INHERITS (houses);
CREATE TABLE houses_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT houses_dir_check CHECK (dir = 14)) INHERITS (houses);
CREATE TABLE houses_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT houses_dir_check CHECK (dir = 15)) INHERITS (houses);
CREATE TABLE houses_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT houses_dir_check CHECK (dir = 16)) INHERITS (houses);
CREATE TABLE houses_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT houses_dir_check CHECK (dir = 17)) INHERITS (houses);
CREATE TABLE houses_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT houses_dir_check CHECK (dir = 18)) INHERITS (houses);
CREATE TABLE houses_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT houses_dir_check CHECK (dir = 19)) INHERITS (houses);
CREATE TABLE houses_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT houses_dir_check CHECK (dir = 20)) INHERITS (houses);
CREATE TABLE houses_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT houses_dir_check CHECK (dir = 21)) INHERITS (houses);
CREATE TABLE houses_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT houses_dir_check CHECK (dir = 22)) INHERITS (houses);
CREATE TABLE houses_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT houses_dir_check CHECK (dir = 23)) INHERITS (houses);
CREATE TABLE houses_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT houses_dir_check CHECK (dir = 24)) INHERITS (houses);
CREATE TABLE houses_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT houses_dir_check CHECK (dir = 25)) INHERITS (houses);
CREATE TABLE houses_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT houses_dir_check CHECK (dir = 26)) INHERITS (houses);
CREATE TABLE houses_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT houses_dir_check CHECK (dir = 27)) INHERITS (houses);
CREATE TABLE houses_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT houses_dir_check CHECK (dir = 28)) INHERITS (houses);
CREATE TABLE houses_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT houses_dir_check CHECK (dir = 29)) INHERITS (houses);
CREATE TABLE houses_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT houses_dir_check CHECK (dir = 30)) INHERITS (houses);
CREATE TABLE houses_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT houses_dir_check CHECK (dir = 31)) INHERITS (houses);
CREATE TABLE houses_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT houses_dir_check CHECK (dir = 32)) INHERITS (houses);
CREATE TABLE houses_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT houses_dir_check CHECK (dir = 33)) INHERITS (houses);
CREATE TABLE houses_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT houses_dir_check CHECK (dir = 34)) INHERITS (houses);
CREATE TABLE houses_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT houses_dir_check CHECK (dir = 35)) INHERITS (houses);
CREATE TABLE houses_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT houses_dir_check CHECK (dir = 36)) INHERITS (houses);
CREATE TABLE houses_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT houses_dir_check CHECK (dir = 37)) INHERITS (houses);
CREATE TABLE houses_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT houses_dir_check CHECK (dir = 38)) INHERITS (houses);
CREATE TABLE houses_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT houses_dir_check CHECK (dir = 39)) INHERITS (houses);
CREATE TABLE houses_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT houses_dir_check CHECK (dir = 40)) INHERITS (houses);
CREATE TABLE houses_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT houses_dir_check CHECK (dir = 41)) INHERITS (houses);
CREATE TABLE houses_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT houses_dir_check CHECK (dir = 42)) INHERITS (houses);
CREATE TABLE houses_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT houses_dir_check CHECK (dir = 43)) INHERITS (houses);
CREATE TABLE houses_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT houses_dir_check CHECK (dir = 44)) INHERITS (houses);
CREATE TABLE houses_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT houses_dir_check CHECK (dir = 45)) INHERITS (houses);
CREATE TABLE houses_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT houses_dir_check CHECK (dir = 46)) INHERITS (houses);
CREATE TABLE houses_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT houses_dir_check CHECK (dir = 47)) INHERITS (houses);
CREATE TABLE houses_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT houses_dir_check CHECK (dir = 48)) INHERITS (houses);
CREATE TABLE houses_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT houses_dir_check CHECK (dir = 49)) INHERITS (houses);
CREATE TABLE houses_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT houses_dir_check CHECK (dir = 50)) INHERITS (houses);
CREATE TABLE houses_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT houses_dir_check CHECK (dir = 51)) INHERITS (houses);
CREATE TABLE houses_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT houses_dir_check CHECK (dir = 52)) INHERITS (houses);
CREATE TABLE houses_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT houses_dir_check CHECK (dir = 53)) INHERITS (houses);
CREATE TABLE houses_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT houses_dir_check CHECK (dir = 54)) INHERITS (houses);
CREATE TABLE houses_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT houses_dir_check CHECK (dir = 55)) INHERITS (houses);
CREATE TABLE houses_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT houses_dir_check CHECK (dir = 56)) INHERITS (houses);
CREATE TABLE houses_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT houses_dir_check CHECK (dir = 57)) INHERITS (houses);
CREATE TABLE houses_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT houses_dir_check CHECK (dir = 58)) INHERITS (houses);
CREATE TABLE houses_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT houses_dir_check CHECK (dir = 59)) INHERITS (houses);
CREATE TABLE houses_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT houses_dir_check CHECK (dir = 60)) INHERITS (houses);
CREATE TABLE houses_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT houses_dir_check CHECK (dir = 61)) INHERITS (houses);
CREATE TABLE houses_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT houses_dir_check CHECK (dir = 62)) INHERITS (houses);
CREATE TABLE houses_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT houses_dir_check CHECK (dir = 63)) INHERITS (houses);
CREATE TABLE houses_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT houses_dir_check CHECK (dir = 64)) INHERITS (houses);
CREATE TABLE houses_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT houses_dir_check CHECK (dir = 65)) INHERITS (houses);
CREATE TABLE houses_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT houses_dir_check CHECK (dir = 66)) INHERITS (houses);
CREATE TABLE houses_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT houses_dir_check CHECK (dir = 67)) INHERITS (houses);
CREATE TABLE houses_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT houses_dir_check CHECK (dir = 68)) INHERITS (houses);
CREATE TABLE houses_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT houses_dir_check CHECK (dir = 69)) INHERITS (houses);
CREATE TABLE houses_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT houses_dir_check CHECK (dir = 70)) INHERITS (houses);
CREATE TABLE houses_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT houses_dir_check CHECK (dir = 71)) INHERITS (houses);
CREATE TABLE houses_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT houses_dir_check CHECK (dir = 72)) INHERITS (houses);
CREATE TABLE houses_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT houses_dir_check CHECK (dir = 73)) INHERITS (houses);
CREATE TABLE houses_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT houses_dir_check CHECK (dir = 74)) INHERITS (houses);
CREATE TABLE houses_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT houses_dir_check CHECK (dir = 75)) INHERITS (houses);
CREATE TABLE houses_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT houses_dir_check CHECK (dir = 76)) INHERITS (houses);
CREATE TABLE houses_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT houses_dir_check CHECK (dir = 77)) INHERITS (houses);
CREATE TABLE houses_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT houses_dir_check CHECK (dir = 78)) INHERITS (houses);
CREATE TABLE houses_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT houses_dir_check CHECK (dir = 79)) INHERITS (houses);
CREATE TABLE houses_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT houses_dir_check CHECK (dir = 80)) INHERITS (houses);
CREATE TABLE houses_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT houses_dir_check CHECK (dir = 81)) INHERITS (houses);
CREATE TABLE houses_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT houses_dir_check CHECK (dir = 82)) INHERITS (houses);
CREATE TABLE houses_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT houses_dir_check CHECK (dir = 83)) INHERITS (houses);
CREATE TABLE houses_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT houses_dir_check CHECK (dir = 84)) INHERITS (houses);
CREATE TABLE houses_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT houses_dir_check CHECK (dir = 85)) INHERITS (houses);
CREATE TABLE houses_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT houses_dir_check CHECK (dir = 86)) INHERITS (houses);
CREATE TABLE houses_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT houses_dir_check CHECK (dir = 87)) INHERITS (houses);
CREATE TABLE houses_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT houses_dir_check CHECK (dir = 88)) INHERITS (houses);
CREATE TABLE houses_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT houses_dir_check CHECK (dir = 89)) INHERITS (houses);
CREATE TABLE houses_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT houses_dir_check CHECK (dir = 90)) INHERITS (houses);
CREATE TABLE houses_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT houses_dir_check CHECK (dir = 91)) INHERITS (houses);
CREATE TABLE houses_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT houses_dir_check CHECK (dir = 92)) INHERITS (houses);
CREATE TABLE houses_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT houses_dir_check CHECK (dir = 93)) INHERITS (houses);
CREATE TABLE houses_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT houses_dir_check CHECK (dir = 94)) INHERITS (houses);
CREATE TABLE houses_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT houses_dir_check CHECK (dir = 95)) INHERITS (houses);
CREATE TABLE houses_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT houses_dir_check CHECK (dir = 96)) INHERITS (houses);
CREATE TABLE houses_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT houses_dir_check CHECK (dir = 97)) INHERITS (houses);
CREATE TABLE houses_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT houses_dir_check CHECK (dir = 98)) INHERITS (houses);
CREATE TABLE houses_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT houses_dir_check CHECK (dir = 99)) INHERITS (houses);
