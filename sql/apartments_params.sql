CREATE TABLE apartments_params (
    param param_type NOT NULL DEFAULT 'apartments',
    CONSTRAINT apartments_params_pkey PRIMARY KEY (id),
    CONSTRAINT apartments_params_param_check CHECK (param = 'apartments')
) INHERITS (param);
COMMENT ON TABLE apartments_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN apartments_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN apartments_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN apartments_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN apartments_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN apartments_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN apartments_params.value IS 'Значение параметра';
COMMENT ON COLUMN apartments_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartments_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN apartments_params.enddate IS 'Дата окончания действия записи';

CREATE TABLE apartments_params_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT apartments_params_01_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_01_dir_check CHECK (dir = 01)) INHERITS (apartments_params);
CREATE TABLE apartments_params_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT apartments_params_02_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_02_dir_check CHECK (dir = 02)) INHERITS (apartments_params);
CREATE TABLE apartments_params_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT apartments_params_03_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_03_dir_check CHECK (dir = 03)) INHERITS (apartments_params);
CREATE TABLE apartments_params_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT apartments_params_04_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_04_dir_check CHECK (dir = 04)) INHERITS (apartments_params);
CREATE TABLE apartments_params_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT apartments_params_05_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_05_dir_check CHECK (dir = 05)) INHERITS (apartments_params);
CREATE TABLE apartments_params_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT apartments_params_06_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_06_dir_check CHECK (dir = 06)) INHERITS (apartments_params);
CREATE TABLE apartments_params_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT apartments_params_07_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_07_dir_check CHECK (dir = 07)) INHERITS (apartments_params);
CREATE TABLE apartments_params_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT apartments_params_08_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_08_dir_check CHECK (dir = 08)) INHERITS (apartments_params);
CREATE TABLE apartments_params_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT apartments_params_09_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_09_dir_check CHECK (dir = 09)) INHERITS (apartments_params);
CREATE TABLE apartments_params_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT apartments_params_10_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_10_dir_check CHECK (dir = 10)) INHERITS (apartments_params);
CREATE TABLE apartments_params_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT apartments_params_11_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_11_dir_check CHECK (dir = 11)) INHERITS (apartments_params);
CREATE TABLE apartments_params_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT apartments_params_12_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_12_dir_check CHECK (dir = 12)) INHERITS (apartments_params);
CREATE TABLE apartments_params_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT apartments_params_13_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_13_dir_check CHECK (dir = 13)) INHERITS (apartments_params);
CREATE TABLE apartments_params_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT apartments_params_14_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_14_dir_check CHECK (dir = 14)) INHERITS (apartments_params);
CREATE TABLE apartments_params_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT apartments_params_15_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_15_dir_check CHECK (dir = 15)) INHERITS (apartments_params);
CREATE TABLE apartments_params_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT apartments_params_16_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_16_dir_check CHECK (dir = 16)) INHERITS (apartments_params);
CREATE TABLE apartments_params_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT apartments_params_17_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_17_dir_check CHECK (dir = 17)) INHERITS (apartments_params);
CREATE TABLE apartments_params_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT apartments_params_18_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_18_dir_check CHECK (dir = 18)) INHERITS (apartments_params);
CREATE TABLE apartments_params_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT apartments_params_19_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_19_dir_check CHECK (dir = 19)) INHERITS (apartments_params);
CREATE TABLE apartments_params_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT apartments_params_20_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_20_dir_check CHECK (dir = 20)) INHERITS (apartments_params);
CREATE TABLE apartments_params_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT apartments_params_21_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_21_dir_check CHECK (dir = 21)) INHERITS (apartments_params);
CREATE TABLE apartments_params_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT apartments_params_22_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_22_dir_check CHECK (dir = 22)) INHERITS (apartments_params);
CREATE TABLE apartments_params_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT apartments_params_23_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_23_dir_check CHECK (dir = 23)) INHERITS (apartments_params);
CREATE TABLE apartments_params_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT apartments_params_24_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_24_dir_check CHECK (dir = 24)) INHERITS (apartments_params);
CREATE TABLE apartments_params_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT apartments_params_25_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_25_dir_check CHECK (dir = 25)) INHERITS (apartments_params);
CREATE TABLE apartments_params_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT apartments_params_26_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_26_dir_check CHECK (dir = 26)) INHERITS (apartments_params);
CREATE TABLE apartments_params_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT apartments_params_27_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_27_dir_check CHECK (dir = 27)) INHERITS (apartments_params);
CREATE TABLE apartments_params_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT apartments_params_28_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_28_dir_check CHECK (dir = 28)) INHERITS (apartments_params);
CREATE TABLE apartments_params_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT apartments_params_29_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_29_dir_check CHECK (dir = 29)) INHERITS (apartments_params);
CREATE TABLE apartments_params_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT apartments_params_30_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_30_dir_check CHECK (dir = 30)) INHERITS (apartments_params);
CREATE TABLE apartments_params_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT apartments_params_31_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_31_dir_check CHECK (dir = 31)) INHERITS (apartments_params);
CREATE TABLE apartments_params_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT apartments_params_32_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_32_dir_check CHECK (dir = 32)) INHERITS (apartments_params);
CREATE TABLE apartments_params_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT apartments_params_33_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_33_dir_check CHECK (dir = 33)) INHERITS (apartments_params);
CREATE TABLE apartments_params_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT apartments_params_34_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_34_dir_check CHECK (dir = 34)) INHERITS (apartments_params);
CREATE TABLE apartments_params_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT apartments_params_35_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_35_dir_check CHECK (dir = 35)) INHERITS (apartments_params);
CREATE TABLE apartments_params_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT apartments_params_36_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_36_dir_check CHECK (dir = 36)) INHERITS (apartments_params);
CREATE TABLE apartments_params_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT apartments_params_37_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_37_dir_check CHECK (dir = 37)) INHERITS (apartments_params);
CREATE TABLE apartments_params_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT apartments_params_38_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_38_dir_check CHECK (dir = 38)) INHERITS (apartments_params);
CREATE TABLE apartments_params_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT apartments_params_39_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_39_dir_check CHECK (dir = 39)) INHERITS (apartments_params);
CREATE TABLE apartments_params_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT apartments_params_40_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_40_dir_check CHECK (dir = 40)) INHERITS (apartments_params);
CREATE TABLE apartments_params_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT apartments_params_41_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_41_dir_check CHECK (dir = 41)) INHERITS (apartments_params);
CREATE TABLE apartments_params_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT apartments_params_42_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_42_dir_check CHECK (dir = 42)) INHERITS (apartments_params);
CREATE TABLE apartments_params_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT apartments_params_43_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_43_dir_check CHECK (dir = 43)) INHERITS (apartments_params);
CREATE TABLE apartments_params_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT apartments_params_44_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_44_dir_check CHECK (dir = 44)) INHERITS (apartments_params);
CREATE TABLE apartments_params_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT apartments_params_45_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_45_dir_check CHECK (dir = 45)) INHERITS (apartments_params);
CREATE TABLE apartments_params_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT apartments_params_46_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_46_dir_check CHECK (dir = 46)) INHERITS (apartments_params);
CREATE TABLE apartments_params_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT apartments_params_47_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_47_dir_check CHECK (dir = 47)) INHERITS (apartments_params);
CREATE TABLE apartments_params_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT apartments_params_48_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_48_dir_check CHECK (dir = 48)) INHERITS (apartments_params);
CREATE TABLE apartments_params_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT apartments_params_49_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_49_dir_check CHECK (dir = 49)) INHERITS (apartments_params);
CREATE TABLE apartments_params_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT apartments_params_50_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_50_dir_check CHECK (dir = 50)) INHERITS (apartments_params);
CREATE TABLE apartments_params_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT apartments_params_51_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_51_dir_check CHECK (dir = 51)) INHERITS (apartments_params);
CREATE TABLE apartments_params_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT apartments_params_52_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_52_dir_check CHECK (dir = 52)) INHERITS (apartments_params);
CREATE TABLE apartments_params_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT apartments_params_53_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_53_dir_check CHECK (dir = 53)) INHERITS (apartments_params);
CREATE TABLE apartments_params_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT apartments_params_54_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_54_dir_check CHECK (dir = 54)) INHERITS (apartments_params);
CREATE TABLE apartments_params_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT apartments_params_55_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_55_dir_check CHECK (dir = 55)) INHERITS (apartments_params);
CREATE TABLE apartments_params_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT apartments_params_56_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_56_dir_check CHECK (dir = 56)) INHERITS (apartments_params);
CREATE TABLE apartments_params_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT apartments_params_57_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_57_dir_check CHECK (dir = 57)) INHERITS (apartments_params);
CREATE TABLE apartments_params_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT apartments_params_58_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_58_dir_check CHECK (dir = 58)) INHERITS (apartments_params);
CREATE TABLE apartments_params_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT apartments_params_59_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_59_dir_check CHECK (dir = 59)) INHERITS (apartments_params);
CREATE TABLE apartments_params_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT apartments_params_60_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_60_dir_check CHECK (dir = 60)) INHERITS (apartments_params);
CREATE TABLE apartments_params_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT apartments_params_61_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_61_dir_check CHECK (dir = 61)) INHERITS (apartments_params);
CREATE TABLE apartments_params_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT apartments_params_62_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_62_dir_check CHECK (dir = 62)) INHERITS (apartments_params);
CREATE TABLE apartments_params_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT apartments_params_63_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_63_dir_check CHECK (dir = 63)) INHERITS (apartments_params);
CREATE TABLE apartments_params_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT apartments_params_64_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_64_dir_check CHECK (dir = 64)) INHERITS (apartments_params);
CREATE TABLE apartments_params_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT apartments_params_65_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_65_dir_check CHECK (dir = 65)) INHERITS (apartments_params);
CREATE TABLE apartments_params_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT apartments_params_66_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_66_dir_check CHECK (dir = 66)) INHERITS (apartments_params);
CREATE TABLE apartments_params_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT apartments_params_67_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_67_dir_check CHECK (dir = 67)) INHERITS (apartments_params);
CREATE TABLE apartments_params_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT apartments_params_68_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_68_dir_check CHECK (dir = 68)) INHERITS (apartments_params);
CREATE TABLE apartments_params_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT apartments_params_69_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_69_dir_check CHECK (dir = 69)) INHERITS (apartments_params);
CREATE TABLE apartments_params_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT apartments_params_70_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_70_dir_check CHECK (dir = 70)) INHERITS (apartments_params);
CREATE TABLE apartments_params_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT apartments_params_71_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_71_dir_check CHECK (dir = 71)) INHERITS (apartments_params);
CREATE TABLE apartments_params_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT apartments_params_72_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_72_dir_check CHECK (dir = 72)) INHERITS (apartments_params);
CREATE TABLE apartments_params_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT apartments_params_73_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_73_dir_check CHECK (dir = 73)) INHERITS (apartments_params);
CREATE TABLE apartments_params_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT apartments_params_74_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_74_dir_check CHECK (dir = 74)) INHERITS (apartments_params);
CREATE TABLE apartments_params_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT apartments_params_75_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_75_dir_check CHECK (dir = 75)) INHERITS (apartments_params);
CREATE TABLE apartments_params_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT apartments_params_76_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_76_dir_check CHECK (dir = 76)) INHERITS (apartments_params);
CREATE TABLE apartments_params_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT apartments_params_77_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_77_dir_check CHECK (dir = 77)) INHERITS (apartments_params);
CREATE TABLE apartments_params_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT apartments_params_78_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_78_dir_check CHECK (dir = 78)) INHERITS (apartments_params);
CREATE TABLE apartments_params_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT apartments_params_79_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_79_dir_check CHECK (dir = 79)) INHERITS (apartments_params);
CREATE TABLE apartments_params_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT apartments_params_80_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_80_dir_check CHECK (dir = 80)) INHERITS (apartments_params);
CREATE TABLE apartments_params_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT apartments_params_81_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_81_dir_check CHECK (dir = 81)) INHERITS (apartments_params);
CREATE TABLE apartments_params_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT apartments_params_82_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_82_dir_check CHECK (dir = 82)) INHERITS (apartments_params);
CREATE TABLE apartments_params_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT apartments_params_83_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_83_dir_check CHECK (dir = 83)) INHERITS (apartments_params);
CREATE TABLE apartments_params_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT apartments_params_84_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_84_dir_check CHECK (dir = 84)) INHERITS (apartments_params);
CREATE TABLE apartments_params_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT apartments_params_85_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_85_dir_check CHECK (dir = 85)) INHERITS (apartments_params);
CREATE TABLE apartments_params_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT apartments_params_86_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_86_dir_check CHECK (dir = 86)) INHERITS (apartments_params);
CREATE TABLE apartments_params_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT apartments_params_87_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_87_dir_check CHECK (dir = 87)) INHERITS (apartments_params);
CREATE TABLE apartments_params_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT apartments_params_88_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_88_dir_check CHECK (dir = 88)) INHERITS (apartments_params);
CREATE TABLE apartments_params_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT apartments_params_89_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_89_dir_check CHECK (dir = 89)) INHERITS (apartments_params);
CREATE TABLE apartments_params_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT apartments_params_90_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_90_dir_check CHECK (dir = 90)) INHERITS (apartments_params);
CREATE TABLE apartments_params_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT apartments_params_91_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_91_dir_check CHECK (dir = 91)) INHERITS (apartments_params);
CREATE TABLE apartments_params_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT apartments_params_92_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_92_dir_check CHECK (dir = 92)) INHERITS (apartments_params);
CREATE TABLE apartments_params_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT apartments_params_93_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_93_dir_check CHECK (dir = 93)) INHERITS (apartments_params);
CREATE TABLE apartments_params_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT apartments_params_94_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_94_dir_check CHECK (dir = 94)) INHERITS (apartments_params);
CREATE TABLE apartments_params_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT apartments_params_95_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_95_dir_check CHECK (dir = 95)) INHERITS (apartments_params);
CREATE TABLE apartments_params_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT apartments_params_96_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_96_dir_check CHECK (dir = 96)) INHERITS (apartments_params);
CREATE TABLE apartments_params_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT apartments_params_97_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_97_dir_check CHECK (dir = 97)) INHERITS (apartments_params);
CREATE TABLE apartments_params_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT apartments_params_98_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_98_dir_check CHECK (dir = 98)) INHERITS (apartments_params);
CREATE TABLE apartments_params_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT apartments_params_99_pkey PRIMARY KEY (id), CONSTRAINT apartments_params_99_dir_check CHECK (dir = 99)) INHERITS (apartments_params);
