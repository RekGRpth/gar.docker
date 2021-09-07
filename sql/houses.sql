CREATE TABLE houses (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  housenum VARCHAR(50),
  addnum1 VARCHAR(50),
  addnum2 VARCHAR(50),
  housetype INT,
  addtype1 INT,
  addtype2 INT,
  opertypeid INT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE houses IS 'Сведения по номерам домов улиц городов и населенных пунктов';
COMMENT ON COLUMN houses.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN houses.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN houses.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN houses.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN houses.housenum IS 'Основной номер дома';
COMMENT ON COLUMN houses.addnum1 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses.addnum2 IS 'Дополнительный номер дома 1';
COMMENT ON COLUMN houses.housetype IS 'Основной тип дома';
COMMENT ON COLUMN houses.addtype1 IS 'Дополнительный тип дома 1';
COMMENT ON COLUMN houses.addtype2 IS 'Дополнительный тип дома 2';
COMMENT ON COLUMN houses.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN houses.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN houses.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN houses.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN houses.startdate IS 'Начало действия записи';
COMMENT ON COLUMN houses.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN houses.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN houses.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE houses_01 (CONSTRAINT houses_01_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_02 (CONSTRAINT houses_02_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_03 (CONSTRAINT houses_03_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_04 (CONSTRAINT houses_04_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_05 (CONSTRAINT houses_05_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_06 (CONSTRAINT houses_06_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_07 (CONSTRAINT houses_07_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_08 (CONSTRAINT houses_08_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_09 (CONSTRAINT houses_09_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_10 (CONSTRAINT houses_10_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_11 (CONSTRAINT houses_11_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_12 (CONSTRAINT houses_12_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_13 (CONSTRAINT houses_13_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_14 (CONSTRAINT houses_14_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_15 (CONSTRAINT houses_15_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_16 (CONSTRAINT houses_16_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_17 (CONSTRAINT houses_17_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_18 (CONSTRAINT houses_18_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_19 (CONSTRAINT houses_19_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_20 (CONSTRAINT houses_20_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_21 (CONSTRAINT houses_21_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_22 (CONSTRAINT houses_22_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_23 (CONSTRAINT houses_23_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_24 (CONSTRAINT houses_24_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_25 (CONSTRAINT houses_25_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_26 (CONSTRAINT houses_26_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_27 (CONSTRAINT houses_27_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_28 (CONSTRAINT houses_28_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_29 (CONSTRAINT houses_29_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_30 (CONSTRAINT houses_30_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_31 (CONSTRAINT houses_31_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_32 (CONSTRAINT houses_32_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_33 (CONSTRAINT houses_33_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_34 (CONSTRAINT houses_34_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_35 (CONSTRAINT houses_35_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_36 (CONSTRAINT houses_36_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_37 (CONSTRAINT houses_37_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_38 (CONSTRAINT houses_38_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_39 (CONSTRAINT houses_39_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_40 (CONSTRAINT houses_40_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_41 (CONSTRAINT houses_41_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_42 (CONSTRAINT houses_42_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_43 (CONSTRAINT houses_43_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_44 (CONSTRAINT houses_44_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_45 (CONSTRAINT houses_45_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_46 (CONSTRAINT houses_46_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_47 (CONSTRAINT houses_47_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_48 (CONSTRAINT houses_48_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_49 (CONSTRAINT houses_49_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_50 (CONSTRAINT houses_50_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_51 (CONSTRAINT houses_51_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_52 (CONSTRAINT houses_52_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_53 (CONSTRAINT houses_53_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_54 (CONSTRAINT houses_54_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_55 (CONSTRAINT houses_55_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_56 (CONSTRAINT houses_56_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_57 (CONSTRAINT houses_57_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_58 (CONSTRAINT houses_58_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_59 (CONSTRAINT houses_59_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_60 (CONSTRAINT houses_60_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_61 (CONSTRAINT houses_61_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_62 (CONSTRAINT houses_62_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_63 (CONSTRAINT houses_63_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_64 (CONSTRAINT houses_64_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_65 (CONSTRAINT houses_65_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_66 (CONSTRAINT houses_66_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_67 (CONSTRAINT houses_67_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_68 (CONSTRAINT houses_68_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_69 (CONSTRAINT houses_69_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_70 (CONSTRAINT houses_70_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_71 (CONSTRAINT houses_71_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_72 (CONSTRAINT houses_72_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_73 (CONSTRAINT houses_73_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_74 (CONSTRAINT houses_74_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_75 (CONSTRAINT houses_75_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_76 (CONSTRAINT houses_76_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_77 (CONSTRAINT houses_77_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_78 (CONSTRAINT houses_78_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_79 (CONSTRAINT houses_79_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_80 (CONSTRAINT houses_80_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_81 (CONSTRAINT houses_81_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_82 (CONSTRAINT houses_82_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_83 (CONSTRAINT houses_83_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_84 (CONSTRAINT houses_84_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_85 (CONSTRAINT houses_85_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_86 (CONSTRAINT houses_86_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_87 (CONSTRAINT houses_87_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_88 (CONSTRAINT houses_88_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_89 (CONSTRAINT houses_89_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_90 (CONSTRAINT houses_90_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_91 (CONSTRAINT houses_91_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_92 (CONSTRAINT houses_92_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_93 (CONSTRAINT houses_93_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_94 (CONSTRAINT houses_94_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_95 (CONSTRAINT houses_95_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_96 (CONSTRAINT houses_96_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_97 (CONSTRAINT houses_97_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_98 (CONSTRAINT houses_98_pkey PRIMARY KEY (id)) INHERITS (houses);
CREATE TABLE houses_99 (CONSTRAINT houses_99_pkey PRIMARY KEY (id)) INHERITS (houses);
