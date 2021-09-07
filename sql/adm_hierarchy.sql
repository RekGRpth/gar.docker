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
CREATE TABLE adm_hierarchy_01 (CONSTRAINT adm_hierarchy_01_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_02 (CONSTRAINT adm_hierarchy_02_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_03 (CONSTRAINT adm_hierarchy_03_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_04 (CONSTRAINT adm_hierarchy_04_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_05 (CONSTRAINT adm_hierarchy_05_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_06 (CONSTRAINT adm_hierarchy_06_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_07 (CONSTRAINT adm_hierarchy_07_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_08 (CONSTRAINT adm_hierarchy_08_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_09 (CONSTRAINT adm_hierarchy_09_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_10 (CONSTRAINT adm_hierarchy_10_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_11 (CONSTRAINT adm_hierarchy_11_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_12 (CONSTRAINT adm_hierarchy_12_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_13 (CONSTRAINT adm_hierarchy_13_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_14 (CONSTRAINT adm_hierarchy_14_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_15 (CONSTRAINT adm_hierarchy_15_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_16 (CONSTRAINT adm_hierarchy_16_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_17 (CONSTRAINT adm_hierarchy_17_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_18 (CONSTRAINT adm_hierarchy_18_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_19 (CONSTRAINT adm_hierarchy_19_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_20 (CONSTRAINT adm_hierarchy_20_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_21 (CONSTRAINT adm_hierarchy_21_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_22 (CONSTRAINT adm_hierarchy_22_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_23 (CONSTRAINT adm_hierarchy_23_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_24 (CONSTRAINT adm_hierarchy_24_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_25 (CONSTRAINT adm_hierarchy_25_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_26 (CONSTRAINT adm_hierarchy_26_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_27 (CONSTRAINT adm_hierarchy_27_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_28 (CONSTRAINT adm_hierarchy_28_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_29 (CONSTRAINT adm_hierarchy_29_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_30 (CONSTRAINT adm_hierarchy_30_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_31 (CONSTRAINT adm_hierarchy_31_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_32 (CONSTRAINT adm_hierarchy_32_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_33 (CONSTRAINT adm_hierarchy_33_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_34 (CONSTRAINT adm_hierarchy_34_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_35 (CONSTRAINT adm_hierarchy_35_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_36 (CONSTRAINT adm_hierarchy_36_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_37 (CONSTRAINT adm_hierarchy_37_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_38 (CONSTRAINT adm_hierarchy_38_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_39 (CONSTRAINT adm_hierarchy_39_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_40 (CONSTRAINT adm_hierarchy_40_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_41 (CONSTRAINT adm_hierarchy_41_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_42 (CONSTRAINT adm_hierarchy_42_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_43 (CONSTRAINT adm_hierarchy_43_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_44 (CONSTRAINT adm_hierarchy_44_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_45 (CONSTRAINT adm_hierarchy_45_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_46 (CONSTRAINT adm_hierarchy_46_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_47 (CONSTRAINT adm_hierarchy_47_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_48 (CONSTRAINT adm_hierarchy_48_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_49 (CONSTRAINT adm_hierarchy_49_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_50 (CONSTRAINT adm_hierarchy_50_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_51 (CONSTRAINT adm_hierarchy_51_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_52 (CONSTRAINT adm_hierarchy_52_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_53 (CONSTRAINT adm_hierarchy_53_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_54 (CONSTRAINT adm_hierarchy_54_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_55 (CONSTRAINT adm_hierarchy_55_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_56 (CONSTRAINT adm_hierarchy_56_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_57 (CONSTRAINT adm_hierarchy_57_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_58 (CONSTRAINT adm_hierarchy_58_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_59 (CONSTRAINT adm_hierarchy_59_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_60 (CONSTRAINT adm_hierarchy_60_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_61 (CONSTRAINT adm_hierarchy_61_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_62 (CONSTRAINT adm_hierarchy_62_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_63 (CONSTRAINT adm_hierarchy_63_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_64 (CONSTRAINT adm_hierarchy_64_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_65 (CONSTRAINT adm_hierarchy_65_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_66 (CONSTRAINT adm_hierarchy_66_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_67 (CONSTRAINT adm_hierarchy_67_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_68 (CONSTRAINT adm_hierarchy_68_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_69 (CONSTRAINT adm_hierarchy_69_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_70 (CONSTRAINT adm_hierarchy_70_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_71 (CONSTRAINT adm_hierarchy_71_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_72 (CONSTRAINT adm_hierarchy_72_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_73 (CONSTRAINT adm_hierarchy_73_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_74 (CONSTRAINT adm_hierarchy_74_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_75 (CONSTRAINT adm_hierarchy_75_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_76 (CONSTRAINT adm_hierarchy_76_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_77 (CONSTRAINT adm_hierarchy_77_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_78 (CONSTRAINT adm_hierarchy_78_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_79 (CONSTRAINT adm_hierarchy_79_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_80 (CONSTRAINT adm_hierarchy_80_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_81 (CONSTRAINT adm_hierarchy_81_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_82 (CONSTRAINT adm_hierarchy_82_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_83 (CONSTRAINT adm_hierarchy_83_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_84 (CONSTRAINT adm_hierarchy_84_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_85 (CONSTRAINT adm_hierarchy_85_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_86 (CONSTRAINT adm_hierarchy_86_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_87 (CONSTRAINT adm_hierarchy_87_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_88 (CONSTRAINT adm_hierarchy_88_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_89 (CONSTRAINT adm_hierarchy_89_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_90 (CONSTRAINT adm_hierarchy_90_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_91 (CONSTRAINT adm_hierarchy_91_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_92 (CONSTRAINT adm_hierarchy_92_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_93 (CONSTRAINT adm_hierarchy_93_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_94 (CONSTRAINT adm_hierarchy_94_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_95 (CONSTRAINT adm_hierarchy_95_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_96 (CONSTRAINT adm_hierarchy_96_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_97 (CONSTRAINT adm_hierarchy_97_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_98 (CONSTRAINT adm_hierarchy_98_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
CREATE TABLE adm_hierarchy_99 (CONSTRAINT adm_hierarchy_99_pkey PRIMARY KEY (id)) INHERITS (adm_hierarchy);
