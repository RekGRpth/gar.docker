CREATE TABLE IF NOT EXISTS apartments (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  number VARCHAR(50) NOT NULL,
  aparttype INT NOT NULL,
  opertypeid BIGINT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE apartments IS 'Сведения по помещениям';
COMMENT ON COLUMN apartments.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN apartments.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN apartments.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN apartments.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN apartments.number IS 'Номер комнаты';
COMMENT ON COLUMN apartments.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN apartments.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN apartments.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN apartments.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN apartments.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartments.startdate IS 'Начало действия записи';
COMMENT ON COLUMN apartments.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN apartments.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN apartments.isactive IS 'Признак действующего адресного объекта';
CREATE TABLE IF NOT EXISTS apartments_01 (CONSTRAINT apartments_01_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_02 (CONSTRAINT apartments_02_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_03 (CONSTRAINT apartments_03_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_04 (CONSTRAINT apartments_04_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_05 (CONSTRAINT apartments_05_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_06 (CONSTRAINT apartments_06_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_07 (CONSTRAINT apartments_07_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_08 (CONSTRAINT apartments_08_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_09 (CONSTRAINT apartments_09_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_10 (CONSTRAINT apartments_10_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_11 (CONSTRAINT apartments_11_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_12 (CONSTRAINT apartments_12_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_13 (CONSTRAINT apartments_13_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_14 (CONSTRAINT apartments_14_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_15 (CONSTRAINT apartments_15_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_16 (CONSTRAINT apartments_16_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_17 (CONSTRAINT apartments_17_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_18 (CONSTRAINT apartments_18_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_19 (CONSTRAINT apartments_19_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_20 (CONSTRAINT apartments_20_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_21 (CONSTRAINT apartments_21_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_22 (CONSTRAINT apartments_22_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_23 (CONSTRAINT apartments_23_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_24 (CONSTRAINT apartments_24_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_25 (CONSTRAINT apartments_25_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_26 (CONSTRAINT apartments_26_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_27 (CONSTRAINT apartments_27_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_28 (CONSTRAINT apartments_28_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_29 (CONSTRAINT apartments_29_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_30 (CONSTRAINT apartments_30_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_31 (CONSTRAINT apartments_31_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_32 (CONSTRAINT apartments_32_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_33 (CONSTRAINT apartments_33_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_34 (CONSTRAINT apartments_34_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_35 (CONSTRAINT apartments_35_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_36 (CONSTRAINT apartments_36_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_37 (CONSTRAINT apartments_37_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_38 (CONSTRAINT apartments_38_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_39 (CONSTRAINT apartments_39_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_40 (CONSTRAINT apartments_40_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_41 (CONSTRAINT apartments_41_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_42 (CONSTRAINT apartments_42_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_43 (CONSTRAINT apartments_43_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_44 (CONSTRAINT apartments_44_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_45 (CONSTRAINT apartments_45_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_46 (CONSTRAINT apartments_46_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_47 (CONSTRAINT apartments_47_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_48 (CONSTRAINT apartments_48_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_49 (CONSTRAINT apartments_49_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_50 (CONSTRAINT apartments_50_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_51 (CONSTRAINT apartments_51_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_52 (CONSTRAINT apartments_52_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_53 (CONSTRAINT apartments_53_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_54 (CONSTRAINT apartments_54_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_55 (CONSTRAINT apartments_55_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_56 (CONSTRAINT apartments_56_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_57 (CONSTRAINT apartments_57_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_58 (CONSTRAINT apartments_58_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_59 (CONSTRAINT apartments_59_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_60 (CONSTRAINT apartments_60_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_61 (CONSTRAINT apartments_61_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_62 (CONSTRAINT apartments_62_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_63 (CONSTRAINT apartments_63_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_64 (CONSTRAINT apartments_64_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_65 (CONSTRAINT apartments_65_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_66 (CONSTRAINT apartments_66_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_67 (CONSTRAINT apartments_67_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_68 (CONSTRAINT apartments_68_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_69 (CONSTRAINT apartments_69_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_70 (CONSTRAINT apartments_70_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_71 (CONSTRAINT apartments_71_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_72 (CONSTRAINT apartments_72_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_73 (CONSTRAINT apartments_73_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_74 (CONSTRAINT apartments_74_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_75 (CONSTRAINT apartments_75_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_76 (CONSTRAINT apartments_76_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_77 (CONSTRAINT apartments_77_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_78 (CONSTRAINT apartments_78_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_79 (CONSTRAINT apartments_79_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_80 (CONSTRAINT apartments_80_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_81 (CONSTRAINT apartments_81_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_82 (CONSTRAINT apartments_82_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_83 (CONSTRAINT apartments_83_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_84 (CONSTRAINT apartments_84_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_85 (CONSTRAINT apartments_85_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_86 (CONSTRAINT apartments_86_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_87 (CONSTRAINT apartments_87_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_88 (CONSTRAINT apartments_88_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_89 (CONSTRAINT apartments_89_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_90 (CONSTRAINT apartments_90_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_91 (CONSTRAINT apartments_91_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_92 (CONSTRAINT apartments_92_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_93 (CONSTRAINT apartments_93_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_94 (CONSTRAINT apartments_94_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_95 (CONSTRAINT apartments_95_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_96 (CONSTRAINT apartments_96_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_97 (CONSTRAINT apartments_97_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_98 (CONSTRAINT apartments_98_pkey PRIMARY KEY (id)) INHERITS (apartments);
CREATE TABLE IF NOT EXISTS apartments_99 (CONSTRAINT apartments_99_pkey PRIMARY KEY (id)) INHERITS (apartments);
