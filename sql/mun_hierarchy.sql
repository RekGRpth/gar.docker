CREATE TABLE mun_hierarchy (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  parentobjid BIGINT,
  changeid BIGINT NOT NULL,
  oktmo VARCHAR(11),
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE mun_hierarchy IS 'Сведения по иерархии в муниципальном делении';
COMMENT ON COLUMN mun_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN mun_hierarchy.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN mun_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN mun_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN mun_hierarchy.oktmo IS 'Код ОКТМО';
COMMENT ON COLUMN mun_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN mun_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN mun_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN mun_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN mun_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN mun_hierarchy.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE mun_hierarchy_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT CHECK (dir = 01)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT CHECK (dir = 02)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT CHECK (dir = 03)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT CHECK (dir = 04)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT CHECK (dir = 05)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT CHECK (dir = 06)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT CHECK (dir = 07)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT CHECK (dir = 08)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT CHECK (dir = 09)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT CHECK (dir = 10)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT CHECK (dir = 11)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT CHECK (dir = 12)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT CHECK (dir = 13)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT CHECK (dir = 14)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT CHECK (dir = 15)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT CHECK (dir = 16)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT CHECK (dir = 17)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT CHECK (dir = 18)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT CHECK (dir = 19)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT CHECK (dir = 20)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT CHECK (dir = 21)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT CHECK (dir = 22)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT CHECK (dir = 23)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT CHECK (dir = 24)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT CHECK (dir = 25)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT CHECK (dir = 26)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT CHECK (dir = 27)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT CHECK (dir = 28)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT CHECK (dir = 29)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT CHECK (dir = 30)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT CHECK (dir = 31)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT CHECK (dir = 32)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT CHECK (dir = 33)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT CHECK (dir = 34)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT CHECK (dir = 35)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT CHECK (dir = 36)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT CHECK (dir = 37)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT CHECK (dir = 38)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT CHECK (dir = 39)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT CHECK (dir = 40)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT CHECK (dir = 41)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT CHECK (dir = 42)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT CHECK (dir = 43)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT CHECK (dir = 44)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT CHECK (dir = 45)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT CHECK (dir = 46)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT CHECK (dir = 47)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT CHECK (dir = 48)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT CHECK (dir = 49)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT CHECK (dir = 50)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT CHECK (dir = 51)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT CHECK (dir = 52)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT CHECK (dir = 53)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT CHECK (dir = 54)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT CHECK (dir = 55)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT CHECK (dir = 56)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT CHECK (dir = 57)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT CHECK (dir = 58)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT CHECK (dir = 59)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT CHECK (dir = 60)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT CHECK (dir = 61)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT CHECK (dir = 62)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT CHECK (dir = 63)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT CHECK (dir = 64)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT CHECK (dir = 65)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT CHECK (dir = 66)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT CHECK (dir = 67)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT CHECK (dir = 68)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT CHECK (dir = 69)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT CHECK (dir = 70)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT CHECK (dir = 71)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT CHECK (dir = 72)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT CHECK (dir = 73)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT CHECK (dir = 74)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT CHECK (dir = 75)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT CHECK (dir = 76)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT CHECK (dir = 77)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT CHECK (dir = 78)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT CHECK (dir = 79)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT CHECK (dir = 80)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT CHECK (dir = 81)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT CHECK (dir = 82)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT CHECK (dir = 83)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT CHECK (dir = 84)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT CHECK (dir = 85)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT CHECK (dir = 86)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT CHECK (dir = 87)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT CHECK (dir = 88)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT CHECK (dir = 89)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT CHECK (dir = 90)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT CHECK (dir = 91)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT CHECK (dir = 92)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT CHECK (dir = 93)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT CHECK (dir = 94)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT CHECK (dir = 95)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT CHECK (dir = 96)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT CHECK (dir = 97)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT CHECK (dir = 98)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT CHECK (dir = 99)) INHERITS (mun_hierarchy);
