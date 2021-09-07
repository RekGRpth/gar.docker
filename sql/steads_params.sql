CREATE TABLE steads_params (CONSTRAINT steads_params_pkey PRIMARY KEY (id)) INHERITS (param);
COMMENT ON TABLE steads_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN steads_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN steads_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN steads_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN steads_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN steads_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN steads_params.value IS 'Значение параметра';
COMMENT ON COLUMN steads_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN steads_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN steads_params.enddate IS 'Дата окончания действия записи';
CREATE TABLE steads_params_01 (CONSTRAINT steads_params_01_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_02 (CONSTRAINT steads_params_02_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_03 (CONSTRAINT steads_params_03_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_04 (CONSTRAINT steads_params_04_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_05 (CONSTRAINT steads_params_05_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_06 (CONSTRAINT steads_params_06_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_07 (CONSTRAINT steads_params_07_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_08 (CONSTRAINT steads_params_08_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_09 (CONSTRAINT steads_params_09_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_10 (CONSTRAINT steads_params_10_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_11 (CONSTRAINT steads_params_11_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_12 (CONSTRAINT steads_params_12_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_13 (CONSTRAINT steads_params_13_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_14 (CONSTRAINT steads_params_14_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_15 (CONSTRAINT steads_params_15_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_16 (CONSTRAINT steads_params_16_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_17 (CONSTRAINT steads_params_17_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_18 (CONSTRAINT steads_params_18_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_19 (CONSTRAINT steads_params_19_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_20 (CONSTRAINT steads_params_20_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_21 (CONSTRAINT steads_params_21_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_22 (CONSTRAINT steads_params_22_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_23 (CONSTRAINT steads_params_23_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_24 (CONSTRAINT steads_params_24_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_25 (CONSTRAINT steads_params_25_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_26 (CONSTRAINT steads_params_26_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_27 (CONSTRAINT steads_params_27_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_28 (CONSTRAINT steads_params_28_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_29 (CONSTRAINT steads_params_29_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_30 (CONSTRAINT steads_params_30_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_31 (CONSTRAINT steads_params_31_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_32 (CONSTRAINT steads_params_32_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_33 (CONSTRAINT steads_params_33_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_34 (CONSTRAINT steads_params_34_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_35 (CONSTRAINT steads_params_35_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_36 (CONSTRAINT steads_params_36_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_37 (CONSTRAINT steads_params_37_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_38 (CONSTRAINT steads_params_38_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_39 (CONSTRAINT steads_params_39_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_40 (CONSTRAINT steads_params_40_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_41 (CONSTRAINT steads_params_41_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_42 (CONSTRAINT steads_params_42_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_43 (CONSTRAINT steads_params_43_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_44 (CONSTRAINT steads_params_44_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_45 (CONSTRAINT steads_params_45_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_46 (CONSTRAINT steads_params_46_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_47 (CONSTRAINT steads_params_47_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_48 (CONSTRAINT steads_params_48_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_49 (CONSTRAINT steads_params_49_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_50 (CONSTRAINT steads_params_50_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_51 (CONSTRAINT steads_params_51_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_52 (CONSTRAINT steads_params_52_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_53 (CONSTRAINT steads_params_53_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_54 (CONSTRAINT steads_params_54_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_55 (CONSTRAINT steads_params_55_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_56 (CONSTRAINT steads_params_56_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_57 (CONSTRAINT steads_params_57_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_58 (CONSTRAINT steads_params_58_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_59 (CONSTRAINT steads_params_59_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_60 (CONSTRAINT steads_params_60_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_61 (CONSTRAINT steads_params_61_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_62 (CONSTRAINT steads_params_62_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_63 (CONSTRAINT steads_params_63_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_64 (CONSTRAINT steads_params_64_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_65 (CONSTRAINT steads_params_65_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_66 (CONSTRAINT steads_params_66_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_67 (CONSTRAINT steads_params_67_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_68 (CONSTRAINT steads_params_68_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_69 (CONSTRAINT steads_params_69_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_70 (CONSTRAINT steads_params_70_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_71 (CONSTRAINT steads_params_71_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_72 (CONSTRAINT steads_params_72_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_73 (CONSTRAINT steads_params_73_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_74 (CONSTRAINT steads_params_74_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_75 (CONSTRAINT steads_params_75_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_76 (CONSTRAINT steads_params_76_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_77 (CONSTRAINT steads_params_77_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_78 (CONSTRAINT steads_params_78_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_79 (CONSTRAINT steads_params_79_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_80 (CONSTRAINT steads_params_80_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_81 (CONSTRAINT steads_params_81_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_82 (CONSTRAINT steads_params_82_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_83 (CONSTRAINT steads_params_83_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_84 (CONSTRAINT steads_params_84_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_85 (CONSTRAINT steads_params_85_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_86 (CONSTRAINT steads_params_86_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_87 (CONSTRAINT steads_params_87_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_88 (CONSTRAINT steads_params_88_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_89 (CONSTRAINT steads_params_89_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_90 (CONSTRAINT steads_params_90_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_91 (CONSTRAINT steads_params_91_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_92 (CONSTRAINT steads_params_92_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_93 (CONSTRAINT steads_params_93_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_94 (CONSTRAINT steads_params_94_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_95 (CONSTRAINT steads_params_95_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_96 (CONSTRAINT steads_params_96_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_97 (CONSTRAINT steads_params_97_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_98 (CONSTRAINT steads_params_98_pkey PRIMARY KEY (id)) INHERITS (steads_params);
CREATE TABLE steads_params_99 (CONSTRAINT steads_params_99_pkey PRIMARY KEY (id)) INHERITS (steads_params);
