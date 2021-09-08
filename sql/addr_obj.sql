CREATE TABLE IF NOT EXISTS addr_obj (
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
CREATE TABLE IF NOT EXISTS addr_obj_01 (CONSTRAINT addr_obj_01_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_02 (CONSTRAINT addr_obj_02_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_03 (CONSTRAINT addr_obj_03_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_04 (CONSTRAINT addr_obj_04_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_05 (CONSTRAINT addr_obj_05_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_06 (CONSTRAINT addr_obj_06_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_07 (CONSTRAINT addr_obj_07_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_08 (CONSTRAINT addr_obj_08_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_09 (CONSTRAINT addr_obj_09_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_10 (CONSTRAINT addr_obj_10_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_11 (CONSTRAINT addr_obj_11_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_12 (CONSTRAINT addr_obj_12_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_13 (CONSTRAINT addr_obj_13_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_14 (CONSTRAINT addr_obj_14_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_15 (CONSTRAINT addr_obj_15_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_16 (CONSTRAINT addr_obj_16_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_17 (CONSTRAINT addr_obj_17_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_18 (CONSTRAINT addr_obj_18_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_19 (CONSTRAINT addr_obj_19_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_20 (CONSTRAINT addr_obj_20_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_21 (CONSTRAINT addr_obj_21_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_22 (CONSTRAINT addr_obj_22_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_23 (CONSTRAINT addr_obj_23_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_24 (CONSTRAINT addr_obj_24_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_25 (CONSTRAINT addr_obj_25_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_26 (CONSTRAINT addr_obj_26_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_27 (CONSTRAINT addr_obj_27_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_28 (CONSTRAINT addr_obj_28_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_29 (CONSTRAINT addr_obj_29_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_30 (CONSTRAINT addr_obj_30_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_31 (CONSTRAINT addr_obj_31_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_32 (CONSTRAINT addr_obj_32_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_33 (CONSTRAINT addr_obj_33_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_34 (CONSTRAINT addr_obj_34_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_35 (CONSTRAINT addr_obj_35_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_36 (CONSTRAINT addr_obj_36_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_37 (CONSTRAINT addr_obj_37_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_38 (CONSTRAINT addr_obj_38_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_39 (CONSTRAINT addr_obj_39_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_40 (CONSTRAINT addr_obj_40_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_41 (CONSTRAINT addr_obj_41_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_42 (CONSTRAINT addr_obj_42_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_43 (CONSTRAINT addr_obj_43_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_44 (CONSTRAINT addr_obj_44_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_45 (CONSTRAINT addr_obj_45_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_46 (CONSTRAINT addr_obj_46_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_47 (CONSTRAINT addr_obj_47_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_48 (CONSTRAINT addr_obj_48_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_49 (CONSTRAINT addr_obj_49_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_50 (CONSTRAINT addr_obj_50_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_51 (CONSTRAINT addr_obj_51_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_52 (CONSTRAINT addr_obj_52_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_53 (CONSTRAINT addr_obj_53_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_54 (CONSTRAINT addr_obj_54_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_55 (CONSTRAINT addr_obj_55_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_56 (CONSTRAINT addr_obj_56_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_57 (CONSTRAINT addr_obj_57_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_58 (CONSTRAINT addr_obj_58_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_59 (CONSTRAINT addr_obj_59_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_60 (CONSTRAINT addr_obj_60_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_61 (CONSTRAINT addr_obj_61_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_62 (CONSTRAINT addr_obj_62_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_63 (CONSTRAINT addr_obj_63_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_64 (CONSTRAINT addr_obj_64_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_65 (CONSTRAINT addr_obj_65_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_66 (CONSTRAINT addr_obj_66_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_67 (CONSTRAINT addr_obj_67_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_68 (CONSTRAINT addr_obj_68_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_69 (CONSTRAINT addr_obj_69_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_70 (CONSTRAINT addr_obj_70_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_71 (CONSTRAINT addr_obj_71_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_72 (CONSTRAINT addr_obj_72_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_73 (CONSTRAINT addr_obj_73_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_74 (CONSTRAINT addr_obj_74_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_75 (CONSTRAINT addr_obj_75_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_76 (CONSTRAINT addr_obj_76_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_77 (CONSTRAINT addr_obj_77_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_78 (CONSTRAINT addr_obj_78_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_79 (CONSTRAINT addr_obj_79_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_80 (CONSTRAINT addr_obj_80_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_81 (CONSTRAINT addr_obj_81_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_82 (CONSTRAINT addr_obj_82_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_83 (CONSTRAINT addr_obj_83_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_84 (CONSTRAINT addr_obj_84_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_85 (CONSTRAINT addr_obj_85_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_86 (CONSTRAINT addr_obj_86_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_87 (CONSTRAINT addr_obj_87_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_88 (CONSTRAINT addr_obj_88_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_89 (CONSTRAINT addr_obj_89_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_90 (CONSTRAINT addr_obj_90_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_91 (CONSTRAINT addr_obj_91_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_92 (CONSTRAINT addr_obj_92_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_93 (CONSTRAINT addr_obj_93_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_94 (CONSTRAINT addr_obj_94_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_95 (CONSTRAINT addr_obj_95_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_96 (CONSTRAINT addr_obj_96_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_97 (CONSTRAINT addr_obj_97_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_98 (CONSTRAINT addr_obj_98_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
CREATE TABLE IF NOT EXISTS addr_obj_99 (CONSTRAINT addr_obj_99_pkey PRIMARY KEY (id)) INHERITS (addr_obj);
