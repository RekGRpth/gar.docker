CREATE TABLE reestr_objects (
  objectid BIGINT NOT NULL PRIMARY KEY,
  createdate DATE NOT NULL,
  changeid BIGINT NOT NULL,
  levelid INT NOT NULL,
  updatedate DATE NOT NULL,
  objectguid UUID NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE reestr_objects IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN reestr_objects.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN reestr_objects.createdate IS 'Дата создания';
COMMENT ON COLUMN reestr_objects.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN reestr_objects.levelid IS 'Уровень объекта';
COMMENT ON COLUMN reestr_objects.updatedate IS 'Дата обновления';
COMMENT ON COLUMN reestr_objects.objectguid IS 'GUID объекта';
COMMENT ON COLUMN reestr_objects.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';
CREATE TABLE reestr_objects_01 (CONSTRAINT reestr_objects_01_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_02 (CONSTRAINT reestr_objects_02_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_03 (CONSTRAINT reestr_objects_03_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_04 (CONSTRAINT reestr_objects_04_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_05 (CONSTRAINT reestr_objects_05_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_06 (CONSTRAINT reestr_objects_06_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_07 (CONSTRAINT reestr_objects_07_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_08 (CONSTRAINT reestr_objects_08_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_09 (CONSTRAINT reestr_objects_09_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_10 (CONSTRAINT reestr_objects_10_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_11 (CONSTRAINT reestr_objects_11_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_12 (CONSTRAINT reestr_objects_12_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_13 (CONSTRAINT reestr_objects_13_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_14 (CONSTRAINT reestr_objects_14_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_15 (CONSTRAINT reestr_objects_15_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_16 (CONSTRAINT reestr_objects_16_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_17 (CONSTRAINT reestr_objects_17_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_18 (CONSTRAINT reestr_objects_18_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_19 (CONSTRAINT reestr_objects_19_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_20 (CONSTRAINT reestr_objects_20_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_21 (CONSTRAINT reestr_objects_21_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_22 (CONSTRAINT reestr_objects_22_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_23 (CONSTRAINT reestr_objects_23_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_24 (CONSTRAINT reestr_objects_24_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_25 (CONSTRAINT reestr_objects_25_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_26 (CONSTRAINT reestr_objects_26_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_27 (CONSTRAINT reestr_objects_27_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_28 (CONSTRAINT reestr_objects_28_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_29 (CONSTRAINT reestr_objects_29_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_30 (CONSTRAINT reestr_objects_30_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_31 (CONSTRAINT reestr_objects_31_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_32 (CONSTRAINT reestr_objects_32_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_33 (CONSTRAINT reestr_objects_33_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_34 (CONSTRAINT reestr_objects_34_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_35 (CONSTRAINT reestr_objects_35_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_36 (CONSTRAINT reestr_objects_36_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_37 (CONSTRAINT reestr_objects_37_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_38 (CONSTRAINT reestr_objects_38_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_39 (CONSTRAINT reestr_objects_39_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_40 (CONSTRAINT reestr_objects_40_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_41 (CONSTRAINT reestr_objects_41_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_42 (CONSTRAINT reestr_objects_42_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_43 (CONSTRAINT reestr_objects_43_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_44 (CONSTRAINT reestr_objects_44_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_45 (CONSTRAINT reestr_objects_45_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_46 (CONSTRAINT reestr_objects_46_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_47 (CONSTRAINT reestr_objects_47_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_48 (CONSTRAINT reestr_objects_48_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_49 (CONSTRAINT reestr_objects_49_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_50 (CONSTRAINT reestr_objects_50_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_51 (CONSTRAINT reestr_objects_51_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_52 (CONSTRAINT reestr_objects_52_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_53 (CONSTRAINT reestr_objects_53_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_54 (CONSTRAINT reestr_objects_54_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_55 (CONSTRAINT reestr_objects_55_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_56 (CONSTRAINT reestr_objects_56_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_57 (CONSTRAINT reestr_objects_57_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_58 (CONSTRAINT reestr_objects_58_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_59 (CONSTRAINT reestr_objects_59_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_60 (CONSTRAINT reestr_objects_60_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_61 (CONSTRAINT reestr_objects_61_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_62 (CONSTRAINT reestr_objects_62_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_63 (CONSTRAINT reestr_objects_63_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_64 (CONSTRAINT reestr_objects_64_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_65 (CONSTRAINT reestr_objects_65_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_66 (CONSTRAINT reestr_objects_66_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_67 (CONSTRAINT reestr_objects_67_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_68 (CONSTRAINT reestr_objects_68_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_69 (CONSTRAINT reestr_objects_69_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_70 (CONSTRAINT reestr_objects_70_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_71 (CONSTRAINT reestr_objects_71_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_72 (CONSTRAINT reestr_objects_72_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_73 (CONSTRAINT reestr_objects_73_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_74 (CONSTRAINT reestr_objects_74_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_75 (CONSTRAINT reestr_objects_75_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_76 (CONSTRAINT reestr_objects_76_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_77 (CONSTRAINT reestr_objects_77_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_78 (CONSTRAINT reestr_objects_78_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_79 (CONSTRAINT reestr_objects_79_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_80 (CONSTRAINT reestr_objects_80_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_81 (CONSTRAINT reestr_objects_81_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_82 (CONSTRAINT reestr_objects_82_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_83 (CONSTRAINT reestr_objects_83_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_84 (CONSTRAINT reestr_objects_84_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_85 (CONSTRAINT reestr_objects_85_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_86 (CONSTRAINT reestr_objects_86_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_87 (CONSTRAINT reestr_objects_87_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_88 (CONSTRAINT reestr_objects_88_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_89 (CONSTRAINT reestr_objects_89_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_90 (CONSTRAINT reestr_objects_90_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_91 (CONSTRAINT reestr_objects_91_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_92 (CONSTRAINT reestr_objects_92_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_93 (CONSTRAINT reestr_objects_93_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_94 (CONSTRAINT reestr_objects_94_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_95 (CONSTRAINT reestr_objects_95_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_96 (CONSTRAINT reestr_objects_96_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_97 (CONSTRAINT reestr_objects_97_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_98 (CONSTRAINT reestr_objects_98_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
CREATE TABLE reestr_objects_99 (CONSTRAINT reestr_objects_99_pkey PRIMARY KEY (id)) INHERITS (reestr_objects);
