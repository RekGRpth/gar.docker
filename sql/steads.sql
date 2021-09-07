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
CREATE TABLE steads_01 (CONSTRAINT steads_01_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_02 (CONSTRAINT steads_02_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_03 (CONSTRAINT steads_03_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_04 (CONSTRAINT steads_04_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_05 (CONSTRAINT steads_05_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_06 (CONSTRAINT steads_06_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_07 (CONSTRAINT steads_07_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_08 (CONSTRAINT steads_08_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_09 (CONSTRAINT steads_09_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_10 (CONSTRAINT steads_10_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_11 (CONSTRAINT steads_11_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_12 (CONSTRAINT steads_12_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_13 (CONSTRAINT steads_13_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_14 (CONSTRAINT steads_14_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_15 (CONSTRAINT steads_15_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_16 (CONSTRAINT steads_16_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_17 (CONSTRAINT steads_17_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_18 (CONSTRAINT steads_18_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_19 (CONSTRAINT steads_19_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_20 (CONSTRAINT steads_20_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_21 (CONSTRAINT steads_21_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_22 (CONSTRAINT steads_22_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_23 (CONSTRAINT steads_23_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_24 (CONSTRAINT steads_24_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_25 (CONSTRAINT steads_25_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_26 (CONSTRAINT steads_26_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_27 (CONSTRAINT steads_27_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_28 (CONSTRAINT steads_28_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_29 (CONSTRAINT steads_29_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_30 (CONSTRAINT steads_30_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_31 (CONSTRAINT steads_31_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_32 (CONSTRAINT steads_32_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_33 (CONSTRAINT steads_33_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_34 (CONSTRAINT steads_34_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_35 (CONSTRAINT steads_35_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_36 (CONSTRAINT steads_36_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_37 (CONSTRAINT steads_37_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_38 (CONSTRAINT steads_38_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_39 (CONSTRAINT steads_39_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_40 (CONSTRAINT steads_40_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_41 (CONSTRAINT steads_41_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_42 (CONSTRAINT steads_42_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_43 (CONSTRAINT steads_43_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_44 (CONSTRAINT steads_44_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_45 (CONSTRAINT steads_45_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_46 (CONSTRAINT steads_46_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_47 (CONSTRAINT steads_47_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_48 (CONSTRAINT steads_48_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_49 (CONSTRAINT steads_49_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_50 (CONSTRAINT steads_50_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_51 (CONSTRAINT steads_51_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_52 (CONSTRAINT steads_52_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_53 (CONSTRAINT steads_53_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_54 (CONSTRAINT steads_54_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_55 (CONSTRAINT steads_55_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_56 (CONSTRAINT steads_56_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_57 (CONSTRAINT steads_57_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_58 (CONSTRAINT steads_58_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_59 (CONSTRAINT steads_59_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_60 (CONSTRAINT steads_60_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_61 (CONSTRAINT steads_61_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_62 (CONSTRAINT steads_62_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_63 (CONSTRAINT steads_63_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_64 (CONSTRAINT steads_64_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_65 (CONSTRAINT steads_65_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_66 (CONSTRAINT steads_66_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_67 (CONSTRAINT steads_67_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_68 (CONSTRAINT steads_68_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_69 (CONSTRAINT steads_69_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_70 (CONSTRAINT steads_70_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_71 (CONSTRAINT steads_71_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_72 (CONSTRAINT steads_72_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_73 (CONSTRAINT steads_73_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_74 (CONSTRAINT steads_74_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_75 (CONSTRAINT steads_75_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_76 (CONSTRAINT steads_76_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_77 (CONSTRAINT steads_77_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_78 (CONSTRAINT steads_78_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_79 (CONSTRAINT steads_79_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_80 (CONSTRAINT steads_80_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_81 (CONSTRAINT steads_81_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_82 (CONSTRAINT steads_82_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_83 (CONSTRAINT steads_83_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_84 (CONSTRAINT steads_84_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_85 (CONSTRAINT steads_85_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_86 (CONSTRAINT steads_86_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_87 (CONSTRAINT steads_87_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_88 (CONSTRAINT steads_88_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_89 (CONSTRAINT steads_89_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_90 (CONSTRAINT steads_90_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_91 (CONSTRAINT steads_91_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_92 (CONSTRAINT steads_92_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_93 (CONSTRAINT steads_93_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_94 (CONSTRAINT steads_94_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_95 (CONSTRAINT steads_95_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_96 (CONSTRAINT steads_96_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_97 (CONSTRAINT steads_97_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_98 (CONSTRAINT steads_98_pkey PRIMARY KEY (id)) INHERITS (steads);
CREATE TABLE steads_99 (CONSTRAINT steads_99_pkey PRIMARY KEY (id)) INHERITS (steads);
