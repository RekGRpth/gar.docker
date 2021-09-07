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

CREATE TABLE carplaces_01 (CONSTRAINT carplaces_01_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_02 (CONSTRAINT carplaces_02_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_03 (CONSTRAINT carplaces_03_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_04 (CONSTRAINT carplaces_04_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_05 (CONSTRAINT carplaces_05_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_06 (CONSTRAINT carplaces_06_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_07 (CONSTRAINT carplaces_07_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_08 (CONSTRAINT carplaces_08_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_09 (CONSTRAINT carplaces_09_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_10 (CONSTRAINT carplaces_10_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_11 (CONSTRAINT carplaces_11_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_12 (CONSTRAINT carplaces_12_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_13 (CONSTRAINT carplaces_13_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_14 (CONSTRAINT carplaces_14_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_15 (CONSTRAINT carplaces_15_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_16 (CONSTRAINT carplaces_16_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_17 (CONSTRAINT carplaces_17_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_18 (CONSTRAINT carplaces_18_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_19 (CONSTRAINT carplaces_19_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_20 (CONSTRAINT carplaces_20_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_21 (CONSTRAINT carplaces_21_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_22 (CONSTRAINT carplaces_22_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_23 (CONSTRAINT carplaces_23_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_24 (CONSTRAINT carplaces_24_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_25 (CONSTRAINT carplaces_25_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_26 (CONSTRAINT carplaces_26_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_27 (CONSTRAINT carplaces_27_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_28 (CONSTRAINT carplaces_28_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_29 (CONSTRAINT carplaces_29_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_30 (CONSTRAINT carplaces_30_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_31 (CONSTRAINT carplaces_31_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_32 (CONSTRAINT carplaces_32_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_33 (CONSTRAINT carplaces_33_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_34 (CONSTRAINT carplaces_34_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_35 (CONSTRAINT carplaces_35_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_36 (CONSTRAINT carplaces_36_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_37 (CONSTRAINT carplaces_37_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_38 (CONSTRAINT carplaces_38_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_39 (CONSTRAINT carplaces_39_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_40 (CONSTRAINT carplaces_40_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_41 (CONSTRAINT carplaces_41_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_42 (CONSTRAINT carplaces_42_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_43 (CONSTRAINT carplaces_43_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_44 (CONSTRAINT carplaces_44_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_45 (CONSTRAINT carplaces_45_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_46 (CONSTRAINT carplaces_46_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_47 (CONSTRAINT carplaces_47_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_48 (CONSTRAINT carplaces_48_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_49 (CONSTRAINT carplaces_49_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_50 (CONSTRAINT carplaces_50_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_51 (CONSTRAINT carplaces_51_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_52 (CONSTRAINT carplaces_52_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_53 (CONSTRAINT carplaces_53_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_54 (CONSTRAINT carplaces_54_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_55 (CONSTRAINT carplaces_55_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_56 (CONSTRAINT carplaces_56_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_57 (CONSTRAINT carplaces_57_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_58 (CONSTRAINT carplaces_58_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_59 (CONSTRAINT carplaces_59_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_60 (CONSTRAINT carplaces_60_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_61 (CONSTRAINT carplaces_61_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_62 (CONSTRAINT carplaces_62_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_63 (CONSTRAINT carplaces_63_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_64 (CONSTRAINT carplaces_64_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_65 (CONSTRAINT carplaces_65_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_66 (CONSTRAINT carplaces_66_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_67 (CONSTRAINT carplaces_67_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_68 (CONSTRAINT carplaces_68_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_69 (CONSTRAINT carplaces_69_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_70 (CONSTRAINT carplaces_70_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_71 (CONSTRAINT carplaces_71_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_72 (CONSTRAINT carplaces_72_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_73 (CONSTRAINT carplaces_73_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_74 (CONSTRAINT carplaces_74_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_75 (CONSTRAINT carplaces_75_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_76 (CONSTRAINT carplaces_76_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_77 (CONSTRAINT carplaces_77_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_78 (CONSTRAINT carplaces_78_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_79 (CONSTRAINT carplaces_79_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_80 (CONSTRAINT carplaces_80_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_81 (CONSTRAINT carplaces_81_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_82 (CONSTRAINT carplaces_82_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_83 (CONSTRAINT carplaces_83_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_84 (CONSTRAINT carplaces_84_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_85 (CONSTRAINT carplaces_85_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_86 (CONSTRAINT carplaces_86_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_87 (CONSTRAINT carplaces_87_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_88 (CONSTRAINT carplaces_88_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_89 (CONSTRAINT carplaces_89_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_90 (CONSTRAINT carplaces_90_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_91 (CONSTRAINT carplaces_91_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_92 (CONSTRAINT carplaces_92_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_93 (CONSTRAINT carplaces_93_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_94 (CONSTRAINT carplaces_94_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_95 (CONSTRAINT carplaces_95_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_96 (CONSTRAINT carplaces_96_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_97 (CONSTRAINT carplaces_97_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_98 (CONSTRAINT carplaces_98_pkey PRIMARY KEY (id)) INHERITS (carplaces);
CREATE TABLE carplaces_99 (CONSTRAINT carplaces_99_pkey PRIMARY KEY (id)) INHERITS (carplaces);
