CREATE TABLE carplaces (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  number VARCHAR(50) NOT NULL,
  opertypeid INT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE carplaces IS 'Сведения по машино-местам';
COMMENT ON COLUMN carplaces.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN carplaces.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN carplaces.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN carplaces.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN carplaces.number IS 'Номер машиноместа';
COMMENT ON COLUMN carplaces.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN carplaces.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN carplaces.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN carplaces.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN carplaces.startdate IS 'Начало действия записи';
COMMENT ON COLUMN carplaces.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN carplaces.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN carplaces.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE carplaces_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT carplaces_dir_check CHECK (dir = 01)) INHERITS (carplaces);
CREATE TABLE carplaces_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT carplaces_dir_check CHECK (dir = 02)) INHERITS (carplaces);
CREATE TABLE carplaces_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT carplaces_dir_check CHECK (dir = 03)) INHERITS (carplaces);
CREATE TABLE carplaces_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT carplaces_dir_check CHECK (dir = 04)) INHERITS (carplaces);
CREATE TABLE carplaces_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT carplaces_dir_check CHECK (dir = 05)) INHERITS (carplaces);
CREATE TABLE carplaces_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT carplaces_dir_check CHECK (dir = 06)) INHERITS (carplaces);
CREATE TABLE carplaces_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT carplaces_dir_check CHECK (dir = 07)) INHERITS (carplaces);
CREATE TABLE carplaces_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT carplaces_dir_check CHECK (dir = 08)) INHERITS (carplaces);
CREATE TABLE carplaces_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT carplaces_dir_check CHECK (dir = 09)) INHERITS (carplaces);
CREATE TABLE carplaces_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT carplaces_dir_check CHECK (dir = 10)) INHERITS (carplaces);
CREATE TABLE carplaces_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT carplaces_dir_check CHECK (dir = 11)) INHERITS (carplaces);
CREATE TABLE carplaces_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT carplaces_dir_check CHECK (dir = 12)) INHERITS (carplaces);
CREATE TABLE carplaces_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT carplaces_dir_check CHECK (dir = 13)) INHERITS (carplaces);
CREATE TABLE carplaces_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT carplaces_dir_check CHECK (dir = 14)) INHERITS (carplaces);
CREATE TABLE carplaces_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT carplaces_dir_check CHECK (dir = 15)) INHERITS (carplaces);
CREATE TABLE carplaces_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT carplaces_dir_check CHECK (dir = 16)) INHERITS (carplaces);
CREATE TABLE carplaces_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT carplaces_dir_check CHECK (dir = 17)) INHERITS (carplaces);
CREATE TABLE carplaces_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT carplaces_dir_check CHECK (dir = 18)) INHERITS (carplaces);
CREATE TABLE carplaces_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT carplaces_dir_check CHECK (dir = 19)) INHERITS (carplaces);
CREATE TABLE carplaces_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT carplaces_dir_check CHECK (dir = 20)) INHERITS (carplaces);
CREATE TABLE carplaces_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT carplaces_dir_check CHECK (dir = 21)) INHERITS (carplaces);
CREATE TABLE carplaces_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT carplaces_dir_check CHECK (dir = 22)) INHERITS (carplaces);
CREATE TABLE carplaces_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT carplaces_dir_check CHECK (dir = 23)) INHERITS (carplaces);
CREATE TABLE carplaces_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT carplaces_dir_check CHECK (dir = 24)) INHERITS (carplaces);
CREATE TABLE carplaces_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT carplaces_dir_check CHECK (dir = 25)) INHERITS (carplaces);
CREATE TABLE carplaces_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT carplaces_dir_check CHECK (dir = 26)) INHERITS (carplaces);
CREATE TABLE carplaces_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT carplaces_dir_check CHECK (dir = 27)) INHERITS (carplaces);
CREATE TABLE carplaces_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT carplaces_dir_check CHECK (dir = 28)) INHERITS (carplaces);
CREATE TABLE carplaces_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT carplaces_dir_check CHECK (dir = 29)) INHERITS (carplaces);
CREATE TABLE carplaces_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT carplaces_dir_check CHECK (dir = 30)) INHERITS (carplaces);
CREATE TABLE carplaces_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT carplaces_dir_check CHECK (dir = 31)) INHERITS (carplaces);
CREATE TABLE carplaces_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT carplaces_dir_check CHECK (dir = 32)) INHERITS (carplaces);
CREATE TABLE carplaces_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT carplaces_dir_check CHECK (dir = 33)) INHERITS (carplaces);
CREATE TABLE carplaces_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT carplaces_dir_check CHECK (dir = 34)) INHERITS (carplaces);
CREATE TABLE carplaces_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT carplaces_dir_check CHECK (dir = 35)) INHERITS (carplaces);
CREATE TABLE carplaces_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT carplaces_dir_check CHECK (dir = 36)) INHERITS (carplaces);
CREATE TABLE carplaces_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT carplaces_dir_check CHECK (dir = 37)) INHERITS (carplaces);
CREATE TABLE carplaces_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT carplaces_dir_check CHECK (dir = 38)) INHERITS (carplaces);
CREATE TABLE carplaces_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT carplaces_dir_check CHECK (dir = 39)) INHERITS (carplaces);
CREATE TABLE carplaces_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT carplaces_dir_check CHECK (dir = 40)) INHERITS (carplaces);
CREATE TABLE carplaces_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT carplaces_dir_check CHECK (dir = 41)) INHERITS (carplaces);
CREATE TABLE carplaces_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT carplaces_dir_check CHECK (dir = 42)) INHERITS (carplaces);
CREATE TABLE carplaces_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT carplaces_dir_check CHECK (dir = 43)) INHERITS (carplaces);
CREATE TABLE carplaces_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT carplaces_dir_check CHECK (dir = 44)) INHERITS (carplaces);
CREATE TABLE carplaces_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT carplaces_dir_check CHECK (dir = 45)) INHERITS (carplaces);
CREATE TABLE carplaces_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT carplaces_dir_check CHECK (dir = 46)) INHERITS (carplaces);
CREATE TABLE carplaces_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT carplaces_dir_check CHECK (dir = 47)) INHERITS (carplaces);
CREATE TABLE carplaces_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT carplaces_dir_check CHECK (dir = 48)) INHERITS (carplaces);
CREATE TABLE carplaces_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT carplaces_dir_check CHECK (dir = 49)) INHERITS (carplaces);
CREATE TABLE carplaces_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT carplaces_dir_check CHECK (dir = 50)) INHERITS (carplaces);
CREATE TABLE carplaces_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT carplaces_dir_check CHECK (dir = 51)) INHERITS (carplaces);
CREATE TABLE carplaces_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT carplaces_dir_check CHECK (dir = 52)) INHERITS (carplaces);
CREATE TABLE carplaces_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT carplaces_dir_check CHECK (dir = 53)) INHERITS (carplaces);
CREATE TABLE carplaces_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT carplaces_dir_check CHECK (dir = 54)) INHERITS (carplaces);
CREATE TABLE carplaces_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT carplaces_dir_check CHECK (dir = 55)) INHERITS (carplaces);
CREATE TABLE carplaces_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT carplaces_dir_check CHECK (dir = 56)) INHERITS (carplaces);
CREATE TABLE carplaces_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT carplaces_dir_check CHECK (dir = 57)) INHERITS (carplaces);
CREATE TABLE carplaces_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT carplaces_dir_check CHECK (dir = 58)) INHERITS (carplaces);
CREATE TABLE carplaces_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT carplaces_dir_check CHECK (dir = 59)) INHERITS (carplaces);
CREATE TABLE carplaces_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT carplaces_dir_check CHECK (dir = 60)) INHERITS (carplaces);
CREATE TABLE carplaces_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT carplaces_dir_check CHECK (dir = 61)) INHERITS (carplaces);
CREATE TABLE carplaces_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT carplaces_dir_check CHECK (dir = 62)) INHERITS (carplaces);
CREATE TABLE carplaces_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT carplaces_dir_check CHECK (dir = 63)) INHERITS (carplaces);
CREATE TABLE carplaces_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT carplaces_dir_check CHECK (dir = 64)) INHERITS (carplaces);
CREATE TABLE carplaces_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT carplaces_dir_check CHECK (dir = 65)) INHERITS (carplaces);
CREATE TABLE carplaces_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT carplaces_dir_check CHECK (dir = 66)) INHERITS (carplaces);
CREATE TABLE carplaces_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT carplaces_dir_check CHECK (dir = 67)) INHERITS (carplaces);
CREATE TABLE carplaces_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT carplaces_dir_check CHECK (dir = 68)) INHERITS (carplaces);
CREATE TABLE carplaces_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT carplaces_dir_check CHECK (dir = 69)) INHERITS (carplaces);
CREATE TABLE carplaces_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT carplaces_dir_check CHECK (dir = 70)) INHERITS (carplaces);
CREATE TABLE carplaces_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT carplaces_dir_check CHECK (dir = 71)) INHERITS (carplaces);
CREATE TABLE carplaces_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT carplaces_dir_check CHECK (dir = 72)) INHERITS (carplaces);
CREATE TABLE carplaces_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT carplaces_dir_check CHECK (dir = 73)) INHERITS (carplaces);
CREATE TABLE carplaces_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT carplaces_dir_check CHECK (dir = 74)) INHERITS (carplaces);
CREATE TABLE carplaces_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT carplaces_dir_check CHECK (dir = 75)) INHERITS (carplaces);
CREATE TABLE carplaces_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT carplaces_dir_check CHECK (dir = 76)) INHERITS (carplaces);
CREATE TABLE carplaces_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT carplaces_dir_check CHECK (dir = 77)) INHERITS (carplaces);
CREATE TABLE carplaces_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT carplaces_dir_check CHECK (dir = 78)) INHERITS (carplaces);
CREATE TABLE carplaces_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT carplaces_dir_check CHECK (dir = 79)) INHERITS (carplaces);
CREATE TABLE carplaces_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT carplaces_dir_check CHECK (dir = 80)) INHERITS (carplaces);
CREATE TABLE carplaces_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT carplaces_dir_check CHECK (dir = 81)) INHERITS (carplaces);
CREATE TABLE carplaces_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT carplaces_dir_check CHECK (dir = 82)) INHERITS (carplaces);
CREATE TABLE carplaces_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT carplaces_dir_check CHECK (dir = 83)) INHERITS (carplaces);
CREATE TABLE carplaces_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT carplaces_dir_check CHECK (dir = 84)) INHERITS (carplaces);
CREATE TABLE carplaces_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT carplaces_dir_check CHECK (dir = 85)) INHERITS (carplaces);
CREATE TABLE carplaces_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT carplaces_dir_check CHECK (dir = 86)) INHERITS (carplaces);
CREATE TABLE carplaces_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT carplaces_dir_check CHECK (dir = 87)) INHERITS (carplaces);
CREATE TABLE carplaces_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT carplaces_dir_check CHECK (dir = 88)) INHERITS (carplaces);
CREATE TABLE carplaces_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT carplaces_dir_check CHECK (dir = 89)) INHERITS (carplaces);
CREATE TABLE carplaces_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT carplaces_dir_check CHECK (dir = 90)) INHERITS (carplaces);
CREATE TABLE carplaces_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT carplaces_dir_check CHECK (dir = 91)) INHERITS (carplaces);
CREATE TABLE carplaces_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT carplaces_dir_check CHECK (dir = 92)) INHERITS (carplaces);
CREATE TABLE carplaces_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT carplaces_dir_check CHECK (dir = 93)) INHERITS (carplaces);
CREATE TABLE carplaces_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT carplaces_dir_check CHECK (dir = 94)) INHERITS (carplaces);
CREATE TABLE carplaces_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT carplaces_dir_check CHECK (dir = 95)) INHERITS (carplaces);
CREATE TABLE carplaces_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT carplaces_dir_check CHECK (dir = 96)) INHERITS (carplaces);
CREATE TABLE carplaces_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT carplaces_dir_check CHECK (dir = 97)) INHERITS (carplaces);
CREATE TABLE carplaces_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT carplaces_dir_check CHECK (dir = 98)) INHERITS (carplaces);
CREATE TABLE carplaces_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT carplaces_dir_check CHECK (dir = 99)) INHERITS (carplaces);
