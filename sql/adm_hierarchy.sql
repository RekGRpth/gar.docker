CREATE TABLE adm_hierarchy (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  parentobjid BIGINT,
  changeid BIGINT NOT NULL,
  regioncode VARCHAR(4),
  areacode VARCHAR(4),
  citycode VARCHAR(4),
  placecode VARCHAR(4),
  plancode VARCHAR(4),
  streetcode VARCHAR(4),
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE adm_hierarchy IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN adm_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN adm_hierarchy.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN adm_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN adm_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN adm_hierarchy.regioncode IS 'Код региона';
COMMENT ON COLUMN adm_hierarchy.areacode IS 'Код района';
COMMENT ON COLUMN adm_hierarchy.citycode IS 'Код города';
COMMENT ON COLUMN adm_hierarchy.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN adm_hierarchy.plancode IS 'Код ЭПС';
COMMENT ON COLUMN adm_hierarchy.streetcode IS 'Код улицы';
COMMENT ON COLUMN adm_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN adm_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN adm_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN adm_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN adm_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN adm_hierarchy.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE adm_hierarchy_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 01)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 02)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 03)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 04)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 05)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 06)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 07)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 08)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 09)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 10)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 11)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 12)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 13)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 14)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 15)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 16)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 17)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 18)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 19)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 20)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 21)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 22)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 23)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 24)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 25)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 26)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 27)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 28)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 29)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 30)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 31)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 32)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 33)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 34)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 35)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 36)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 37)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 38)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 39)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 40)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 41)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 42)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 43)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 44)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 45)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 46)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 47)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 48)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 49)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 50)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 51)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 52)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 53)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 54)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 55)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 56)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 57)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 58)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 59)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 60)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 61)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 62)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 63)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 64)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 65)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 66)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 67)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 68)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 69)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 70)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 71)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 72)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 73)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 74)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 75)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 76)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 77)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 78)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 79)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 80)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 81)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 82)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 83)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 84)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 85)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 86)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 87)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 88)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 89)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 90)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 91)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 92)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 93)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 94)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 95)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 96)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 97)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 98)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT adm_hierarchy_dir_check CHECK (dir = 99)) INHERITS (adm_hierarchy);
