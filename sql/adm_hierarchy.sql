CREATE TABLE gar.adm_hierarchy (
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
COMMENT ON TABLE gar.adm_hierarchy IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN gar.adm_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN gar.adm_hierarchy.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN gar.adm_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN gar.adm_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.adm_hierarchy.regioncode IS 'Код региона';
COMMENT ON COLUMN gar.adm_hierarchy.areacode IS 'Код района';
COMMENT ON COLUMN gar.adm_hierarchy.citycode IS 'Код города';
COMMENT ON COLUMN gar.adm_hierarchy.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN gar.adm_hierarchy.plancode IS 'Код ЭПС';
COMMENT ON COLUMN gar.adm_hierarchy.streetcode IS 'Код улицы';
COMMENT ON COLUMN gar.adm_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN gar.adm_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN gar.adm_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.adm_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN gar.adm_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN gar.adm_hierarchy.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE gar.adm_hierarchy_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT CHECK (dir = 01)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT CHECK (dir = 02)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT CHECK (dir = 03)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT CHECK (dir = 04)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT CHECK (dir = 05)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT CHECK (dir = 06)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT CHECK (dir = 07)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT CHECK (dir = 08)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT CHECK (dir = 09)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT CHECK (dir = 10)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT CHECK (dir = 11)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT CHECK (dir = 12)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT CHECK (dir = 13)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT CHECK (dir = 14)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT CHECK (dir = 15)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT CHECK (dir = 16)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT CHECK (dir = 17)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT CHECK (dir = 18)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT CHECK (dir = 19)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT CHECK (dir = 20)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT CHECK (dir = 21)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT CHECK (dir = 22)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT CHECK (dir = 23)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT CHECK (dir = 24)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT CHECK (dir = 25)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT CHECK (dir = 26)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT CHECK (dir = 27)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT CHECK (dir = 28)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT CHECK (dir = 29)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT CHECK (dir = 30)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT CHECK (dir = 31)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT CHECK (dir = 32)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT CHECK (dir = 33)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT CHECK (dir = 34)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT CHECK (dir = 35)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT CHECK (dir = 36)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT CHECK (dir = 37)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT CHECK (dir = 38)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT CHECK (dir = 39)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT CHECK (dir = 40)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT CHECK (dir = 41)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT CHECK (dir = 42)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT CHECK (dir = 43)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT CHECK (dir = 44)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT CHECK (dir = 45)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT CHECK (dir = 46)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT CHECK (dir = 47)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT CHECK (dir = 48)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT CHECK (dir = 49)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT CHECK (dir = 50)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT CHECK (dir = 51)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT CHECK (dir = 52)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT CHECK (dir = 53)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT CHECK (dir = 54)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT CHECK (dir = 55)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT CHECK (dir = 56)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT CHECK (dir = 57)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT CHECK (dir = 58)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT CHECK (dir = 59)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT CHECK (dir = 60)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT CHECK (dir = 61)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT CHECK (dir = 62)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT CHECK (dir = 63)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT CHECK (dir = 64)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT CHECK (dir = 65)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT CHECK (dir = 66)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT CHECK (dir = 67)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT CHECK (dir = 68)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT CHECK (dir = 69)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT CHECK (dir = 70)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT CHECK (dir = 71)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT CHECK (dir = 72)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT CHECK (dir = 73)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT CHECK (dir = 74)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT CHECK (dir = 75)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT CHECK (dir = 76)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT CHECK (dir = 77)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT CHECK (dir = 78)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT CHECK (dir = 79)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT CHECK (dir = 80)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT CHECK (dir = 81)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT CHECK (dir = 82)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT CHECK (dir = 83)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT CHECK (dir = 84)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT CHECK (dir = 85)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT CHECK (dir = 86)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT CHECK (dir = 87)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT CHECK (dir = 88)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT CHECK (dir = 89)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT CHECK (dir = 90)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT CHECK (dir = 91)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT CHECK (dir = 92)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT CHECK (dir = 93)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT CHECK (dir = 94)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT CHECK (dir = 95)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT CHECK (dir = 96)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT CHECK (dir = 97)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT CHECK (dir = 98)) INHERITS (gar.adm_hierarchy);
CREATE TABLE gar.adm_hierarchy_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT CHECK (dir = 99)) INHERITS (gar.adm_hierarchy);
