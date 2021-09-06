CREATE TABLE addr_obj (
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
  isactive SMALLINT NOT NULL
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

CREATE TABLE addr_obj_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT addr_obj_dir_check CHECK (dir = 01)) INHERITS (addr_obj);
CREATE TABLE addr_obj_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT addr_obj_dir_check CHECK (dir = 02)) INHERITS (addr_obj);
CREATE TABLE addr_obj_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT addr_obj_dir_check CHECK (dir = 03)) INHERITS (addr_obj);
CREATE TABLE addr_obj_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT addr_obj_dir_check CHECK (dir = 04)) INHERITS (addr_obj);
CREATE TABLE addr_obj_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT addr_obj_dir_check CHECK (dir = 05)) INHERITS (addr_obj);
CREATE TABLE addr_obj_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT addr_obj_dir_check CHECK (dir = 06)) INHERITS (addr_obj);
CREATE TABLE addr_obj_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT addr_obj_dir_check CHECK (dir = 07)) INHERITS (addr_obj);
CREATE TABLE addr_obj_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT addr_obj_dir_check CHECK (dir = 08)) INHERITS (addr_obj);
CREATE TABLE addr_obj_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT addr_obj_dir_check CHECK (dir = 09)) INHERITS (addr_obj);
CREATE TABLE addr_obj_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT addr_obj_dir_check CHECK (dir = 10)) INHERITS (addr_obj);
CREATE TABLE addr_obj_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT addr_obj_dir_check CHECK (dir = 11)) INHERITS (addr_obj);
CREATE TABLE addr_obj_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT addr_obj_dir_check CHECK (dir = 12)) INHERITS (addr_obj);
CREATE TABLE addr_obj_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT addr_obj_dir_check CHECK (dir = 13)) INHERITS (addr_obj);
CREATE TABLE addr_obj_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT addr_obj_dir_check CHECK (dir = 14)) INHERITS (addr_obj);
CREATE TABLE addr_obj_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT addr_obj_dir_check CHECK (dir = 15)) INHERITS (addr_obj);
CREATE TABLE addr_obj_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT addr_obj_dir_check CHECK (dir = 16)) INHERITS (addr_obj);
CREATE TABLE addr_obj_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT addr_obj_dir_check CHECK (dir = 17)) INHERITS (addr_obj);
CREATE TABLE addr_obj_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT addr_obj_dir_check CHECK (dir = 18)) INHERITS (addr_obj);
CREATE TABLE addr_obj_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT addr_obj_dir_check CHECK (dir = 19)) INHERITS (addr_obj);
CREATE TABLE addr_obj_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT addr_obj_dir_check CHECK (dir = 20)) INHERITS (addr_obj);
CREATE TABLE addr_obj_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT addr_obj_dir_check CHECK (dir = 21)) INHERITS (addr_obj);
CREATE TABLE addr_obj_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT addr_obj_dir_check CHECK (dir = 22)) INHERITS (addr_obj);
CREATE TABLE addr_obj_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT addr_obj_dir_check CHECK (dir = 23)) INHERITS (addr_obj);
CREATE TABLE addr_obj_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT addr_obj_dir_check CHECK (dir = 24)) INHERITS (addr_obj);
CREATE TABLE addr_obj_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT addr_obj_dir_check CHECK (dir = 25)) INHERITS (addr_obj);
CREATE TABLE addr_obj_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT addr_obj_dir_check CHECK (dir = 26)) INHERITS (addr_obj);
CREATE TABLE addr_obj_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT addr_obj_dir_check CHECK (dir = 27)) INHERITS (addr_obj);
CREATE TABLE addr_obj_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT addr_obj_dir_check CHECK (dir = 28)) INHERITS (addr_obj);
CREATE TABLE addr_obj_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT addr_obj_dir_check CHECK (dir = 29)) INHERITS (addr_obj);
CREATE TABLE addr_obj_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT addr_obj_dir_check CHECK (dir = 30)) INHERITS (addr_obj);
CREATE TABLE addr_obj_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT addr_obj_dir_check CHECK (dir = 31)) INHERITS (addr_obj);
CREATE TABLE addr_obj_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT addr_obj_dir_check CHECK (dir = 32)) INHERITS (addr_obj);
CREATE TABLE addr_obj_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT addr_obj_dir_check CHECK (dir = 33)) INHERITS (addr_obj);
CREATE TABLE addr_obj_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT addr_obj_dir_check CHECK (dir = 34)) INHERITS (addr_obj);
CREATE TABLE addr_obj_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT addr_obj_dir_check CHECK (dir = 35)) INHERITS (addr_obj);
CREATE TABLE addr_obj_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT addr_obj_dir_check CHECK (dir = 36)) INHERITS (addr_obj);
CREATE TABLE addr_obj_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT addr_obj_dir_check CHECK (dir = 37)) INHERITS (addr_obj);
CREATE TABLE addr_obj_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT addr_obj_dir_check CHECK (dir = 38)) INHERITS (addr_obj);
CREATE TABLE addr_obj_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT addr_obj_dir_check CHECK (dir = 39)) INHERITS (addr_obj);
CREATE TABLE addr_obj_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT addr_obj_dir_check CHECK (dir = 40)) INHERITS (addr_obj);
CREATE TABLE addr_obj_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT addr_obj_dir_check CHECK (dir = 41)) INHERITS (addr_obj);
CREATE TABLE addr_obj_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT addr_obj_dir_check CHECK (dir = 42)) INHERITS (addr_obj);
CREATE TABLE addr_obj_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT addr_obj_dir_check CHECK (dir = 43)) INHERITS (addr_obj);
CREATE TABLE addr_obj_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT addr_obj_dir_check CHECK (dir = 44)) INHERITS (addr_obj);
CREATE TABLE addr_obj_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT addr_obj_dir_check CHECK (dir = 45)) INHERITS (addr_obj);
CREATE TABLE addr_obj_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT addr_obj_dir_check CHECK (dir = 46)) INHERITS (addr_obj);
CREATE TABLE addr_obj_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT addr_obj_dir_check CHECK (dir = 47)) INHERITS (addr_obj);
CREATE TABLE addr_obj_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT addr_obj_dir_check CHECK (dir = 48)) INHERITS (addr_obj);
CREATE TABLE addr_obj_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT addr_obj_dir_check CHECK (dir = 49)) INHERITS (addr_obj);
CREATE TABLE addr_obj_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT addr_obj_dir_check CHECK (dir = 50)) INHERITS (addr_obj);
CREATE TABLE addr_obj_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT addr_obj_dir_check CHECK (dir = 51)) INHERITS (addr_obj);
CREATE TABLE addr_obj_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT addr_obj_dir_check CHECK (dir = 52)) INHERITS (addr_obj);
CREATE TABLE addr_obj_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT addr_obj_dir_check CHECK (dir = 53)) INHERITS (addr_obj);
CREATE TABLE addr_obj_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT addr_obj_dir_check CHECK (dir = 54)) INHERITS (addr_obj);
CREATE TABLE addr_obj_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT addr_obj_dir_check CHECK (dir = 55)) INHERITS (addr_obj);
CREATE TABLE addr_obj_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT addr_obj_dir_check CHECK (dir = 56)) INHERITS (addr_obj);
CREATE TABLE addr_obj_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT addr_obj_dir_check CHECK (dir = 57)) INHERITS (addr_obj);
CREATE TABLE addr_obj_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT addr_obj_dir_check CHECK (dir = 58)) INHERITS (addr_obj);
CREATE TABLE addr_obj_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT addr_obj_dir_check CHECK (dir = 59)) INHERITS (addr_obj);
CREATE TABLE addr_obj_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT addr_obj_dir_check CHECK (dir = 60)) INHERITS (addr_obj);
CREATE TABLE addr_obj_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT addr_obj_dir_check CHECK (dir = 61)) INHERITS (addr_obj);
CREATE TABLE addr_obj_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT addr_obj_dir_check CHECK (dir = 62)) INHERITS (addr_obj);
CREATE TABLE addr_obj_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT addr_obj_dir_check CHECK (dir = 63)) INHERITS (addr_obj);
CREATE TABLE addr_obj_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT addr_obj_dir_check CHECK (dir = 64)) INHERITS (addr_obj);
CREATE TABLE addr_obj_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT addr_obj_dir_check CHECK (dir = 65)) INHERITS (addr_obj);
CREATE TABLE addr_obj_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT addr_obj_dir_check CHECK (dir = 66)) INHERITS (addr_obj);
CREATE TABLE addr_obj_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT addr_obj_dir_check CHECK (dir = 67)) INHERITS (addr_obj);
CREATE TABLE addr_obj_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT addr_obj_dir_check CHECK (dir = 68)) INHERITS (addr_obj);
CREATE TABLE addr_obj_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT addr_obj_dir_check CHECK (dir = 69)) INHERITS (addr_obj);
CREATE TABLE addr_obj_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT addr_obj_dir_check CHECK (dir = 70)) INHERITS (addr_obj);
CREATE TABLE addr_obj_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT addr_obj_dir_check CHECK (dir = 71)) INHERITS (addr_obj);
CREATE TABLE addr_obj_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT addr_obj_dir_check CHECK (dir = 72)) INHERITS (addr_obj);
CREATE TABLE addr_obj_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT addr_obj_dir_check CHECK (dir = 73)) INHERITS (addr_obj);
CREATE TABLE addr_obj_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT addr_obj_dir_check CHECK (dir = 74)) INHERITS (addr_obj);
CREATE TABLE addr_obj_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT addr_obj_dir_check CHECK (dir = 75)) INHERITS (addr_obj);
CREATE TABLE addr_obj_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT addr_obj_dir_check CHECK (dir = 76)) INHERITS (addr_obj);
CREATE TABLE addr_obj_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT addr_obj_dir_check CHECK (dir = 77)) INHERITS (addr_obj);
CREATE TABLE addr_obj_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT addr_obj_dir_check CHECK (dir = 78)) INHERITS (addr_obj);
CREATE TABLE addr_obj_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT addr_obj_dir_check CHECK (dir = 79)) INHERITS (addr_obj);
CREATE TABLE addr_obj_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT addr_obj_dir_check CHECK (dir = 80)) INHERITS (addr_obj);
CREATE TABLE addr_obj_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT addr_obj_dir_check CHECK (dir = 81)) INHERITS (addr_obj);
CREATE TABLE addr_obj_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT addr_obj_dir_check CHECK (dir = 82)) INHERITS (addr_obj);
CREATE TABLE addr_obj_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT addr_obj_dir_check CHECK (dir = 83)) INHERITS (addr_obj);
CREATE TABLE addr_obj_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT addr_obj_dir_check CHECK (dir = 84)) INHERITS (addr_obj);
CREATE TABLE addr_obj_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT addr_obj_dir_check CHECK (dir = 85)) INHERITS (addr_obj);
CREATE TABLE addr_obj_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT addr_obj_dir_check CHECK (dir = 86)) INHERITS (addr_obj);
CREATE TABLE addr_obj_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT addr_obj_dir_check CHECK (dir = 87)) INHERITS (addr_obj);
CREATE TABLE addr_obj_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT addr_obj_dir_check CHECK (dir = 88)) INHERITS (addr_obj);
CREATE TABLE addr_obj_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT addr_obj_dir_check CHECK (dir = 89)) INHERITS (addr_obj);
CREATE TABLE addr_obj_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT addr_obj_dir_check CHECK (dir = 90)) INHERITS (addr_obj);
CREATE TABLE addr_obj_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT addr_obj_dir_check CHECK (dir = 91)) INHERITS (addr_obj);
CREATE TABLE addr_obj_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT addr_obj_dir_check CHECK (dir = 92)) INHERITS (addr_obj);
CREATE TABLE addr_obj_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT addr_obj_dir_check CHECK (dir = 93)) INHERITS (addr_obj);
CREATE TABLE addr_obj_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT addr_obj_dir_check CHECK (dir = 94)) INHERITS (addr_obj);
CREATE TABLE addr_obj_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT addr_obj_dir_check CHECK (dir = 95)) INHERITS (addr_obj);
CREATE TABLE addr_obj_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT addr_obj_dir_check CHECK (dir = 96)) INHERITS (addr_obj);
CREATE TABLE addr_obj_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT addr_obj_dir_check CHECK (dir = 97)) INHERITS (addr_obj);
CREATE TABLE addr_obj_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT addr_obj_dir_check CHECK (dir = 98)) INHERITS (addr_obj);
CREATE TABLE addr_obj_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT addr_obj_dir_check CHECK (dir = 99)) INHERITS (addr_obj);

