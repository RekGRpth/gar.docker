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

CREATE TABLE mun_hierarchy_01 (CONSTRAINT mun_hierarchy_01_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_02 (CONSTRAINT mun_hierarchy_02_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_03 (CONSTRAINT mun_hierarchy_03_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_04 (CONSTRAINT mun_hierarchy_04_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_05 (CONSTRAINT mun_hierarchy_05_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_06 (CONSTRAINT mun_hierarchy_06_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_07 (CONSTRAINT mun_hierarchy_07_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_08 (CONSTRAINT mun_hierarchy_08_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_09 (CONSTRAINT mun_hierarchy_09_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_10 (CONSTRAINT mun_hierarchy_10_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_11 (CONSTRAINT mun_hierarchy_11_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_12 (CONSTRAINT mun_hierarchy_12_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_13 (CONSTRAINT mun_hierarchy_13_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_14 (CONSTRAINT mun_hierarchy_14_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_15 (CONSTRAINT mun_hierarchy_15_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_16 (CONSTRAINT mun_hierarchy_16_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_17 (CONSTRAINT mun_hierarchy_17_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_18 (CONSTRAINT mun_hierarchy_18_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_19 (CONSTRAINT mun_hierarchy_19_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_20 (CONSTRAINT mun_hierarchy_20_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_21 (CONSTRAINT mun_hierarchy_21_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_22 (CONSTRAINT mun_hierarchy_22_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_23 (CONSTRAINT mun_hierarchy_23_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_24 (CONSTRAINT mun_hierarchy_24_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_25 (CONSTRAINT mun_hierarchy_25_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_26 (CONSTRAINT mun_hierarchy_26_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_27 (CONSTRAINT mun_hierarchy_27_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_28 (CONSTRAINT mun_hierarchy_28_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_29 (CONSTRAINT mun_hierarchy_29_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_30 (CONSTRAINT mun_hierarchy_30_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_31 (CONSTRAINT mun_hierarchy_31_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_32 (CONSTRAINT mun_hierarchy_32_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_33 (CONSTRAINT mun_hierarchy_33_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_34 (CONSTRAINT mun_hierarchy_34_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_35 (CONSTRAINT mun_hierarchy_35_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_36 (CONSTRAINT mun_hierarchy_36_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_37 (CONSTRAINT mun_hierarchy_37_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_38 (CONSTRAINT mun_hierarchy_38_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_39 (CONSTRAINT mun_hierarchy_39_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_40 (CONSTRAINT mun_hierarchy_40_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_41 (CONSTRAINT mun_hierarchy_41_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_42 (CONSTRAINT mun_hierarchy_42_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_43 (CONSTRAINT mun_hierarchy_43_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_44 (CONSTRAINT mun_hierarchy_44_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_45 (CONSTRAINT mun_hierarchy_45_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_46 (CONSTRAINT mun_hierarchy_46_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_47 (CONSTRAINT mun_hierarchy_47_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_48 (CONSTRAINT mun_hierarchy_48_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_49 (CONSTRAINT mun_hierarchy_49_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_50 (CONSTRAINT mun_hierarchy_50_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_51 (CONSTRAINT mun_hierarchy_51_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_52 (CONSTRAINT mun_hierarchy_52_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_53 (CONSTRAINT mun_hierarchy_53_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_54 (CONSTRAINT mun_hierarchy_54_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_55 (CONSTRAINT mun_hierarchy_55_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_56 (CONSTRAINT mun_hierarchy_56_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_57 (CONSTRAINT mun_hierarchy_57_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_58 (CONSTRAINT mun_hierarchy_58_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_59 (CONSTRAINT mun_hierarchy_59_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_60 (CONSTRAINT mun_hierarchy_60_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_61 (CONSTRAINT mun_hierarchy_61_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_62 (CONSTRAINT mun_hierarchy_62_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_63 (CONSTRAINT mun_hierarchy_63_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_64 (CONSTRAINT mun_hierarchy_64_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_65 (CONSTRAINT mun_hierarchy_65_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_66 (CONSTRAINT mun_hierarchy_66_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_67 (CONSTRAINT mun_hierarchy_67_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_68 (CONSTRAINT mun_hierarchy_68_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_69 (CONSTRAINT mun_hierarchy_69_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_70 (CONSTRAINT mun_hierarchy_70_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_71 (CONSTRAINT mun_hierarchy_71_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_72 (CONSTRAINT mun_hierarchy_72_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_73 (CONSTRAINT mun_hierarchy_73_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_74 (CONSTRAINT mun_hierarchy_74_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_75 (CONSTRAINT mun_hierarchy_75_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_76 (CONSTRAINT mun_hierarchy_76_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_77 (CONSTRAINT mun_hierarchy_77_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_78 (CONSTRAINT mun_hierarchy_78_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_79 (CONSTRAINT mun_hierarchy_79_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_80 (CONSTRAINT mun_hierarchy_80_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_81 (CONSTRAINT mun_hierarchy_81_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_82 (CONSTRAINT mun_hierarchy_82_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_83 (CONSTRAINT mun_hierarchy_83_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_84 (CONSTRAINT mun_hierarchy_84_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_85 (CONSTRAINT mun_hierarchy_85_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_86 (CONSTRAINT mun_hierarchy_86_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_87 (CONSTRAINT mun_hierarchy_87_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_88 (CONSTRAINT mun_hierarchy_88_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_89 (CONSTRAINT mun_hierarchy_89_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_90 (CONSTRAINT mun_hierarchy_90_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_91 (CONSTRAINT mun_hierarchy_91_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_92 (CONSTRAINT mun_hierarchy_92_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_93 (CONSTRAINT mun_hierarchy_93_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_94 (CONSTRAINT mun_hierarchy_94_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_95 (CONSTRAINT mun_hierarchy_95_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_96 (CONSTRAINT mun_hierarchy_96_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_97 (CONSTRAINT mun_hierarchy_97_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_98 (CONSTRAINT mun_hierarchy_98_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
CREATE TABLE mun_hierarchy_99 (CONSTRAINT mun_hierarchy_99_pkey PRIMARY KEY (id)) INHERITS (mun_hierarchy);
