CREATE TABLE steads_params (
    param param_type NOT NULL DEFAULT 'steads',
    CONSTRAINT steads_params_pkey PRIMARY KEY (id),
    CONSTRAINT steads_params_param_check CHECK (param = 'steads')
) INHERITS (param);
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

CREATE TABLE steads_params_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT steads_params_dir_check CHECK (dir = 01)) INHERITS (steads_params);
CREATE TABLE steads_params_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT steads_params_dir_check CHECK (dir = 02)) INHERITS (steads_params);
CREATE TABLE steads_params_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT steads_params_dir_check CHECK (dir = 03)) INHERITS (steads_params);
CREATE TABLE steads_params_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT steads_params_dir_check CHECK (dir = 04)) INHERITS (steads_params);
CREATE TABLE steads_params_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT steads_params_dir_check CHECK (dir = 05)) INHERITS (steads_params);
CREATE TABLE steads_params_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT steads_params_dir_check CHECK (dir = 06)) INHERITS (steads_params);
CREATE TABLE steads_params_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT steads_params_dir_check CHECK (dir = 07)) INHERITS (steads_params);
CREATE TABLE steads_params_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT steads_params_dir_check CHECK (dir = 08)) INHERITS (steads_params);
CREATE TABLE steads_params_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT steads_params_dir_check CHECK (dir = 09)) INHERITS (steads_params);
CREATE TABLE steads_params_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT steads_params_dir_check CHECK (dir = 10)) INHERITS (steads_params);
CREATE TABLE steads_params_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT steads_params_dir_check CHECK (dir = 11)) INHERITS (steads_params);
CREATE TABLE steads_params_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT steads_params_dir_check CHECK (dir = 12)) INHERITS (steads_params);
CREATE TABLE steads_params_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT steads_params_dir_check CHECK (dir = 13)) INHERITS (steads_params);
CREATE TABLE steads_params_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT steads_params_dir_check CHECK (dir = 14)) INHERITS (steads_params);
CREATE TABLE steads_params_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT steads_params_dir_check CHECK (dir = 15)) INHERITS (steads_params);
CREATE TABLE steads_params_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT steads_params_dir_check CHECK (dir = 16)) INHERITS (steads_params);
CREATE TABLE steads_params_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT steads_params_dir_check CHECK (dir = 17)) INHERITS (steads_params);
CREATE TABLE steads_params_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT steads_params_dir_check CHECK (dir = 18)) INHERITS (steads_params);
CREATE TABLE steads_params_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT steads_params_dir_check CHECK (dir = 19)) INHERITS (steads_params);
CREATE TABLE steads_params_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT steads_params_dir_check CHECK (dir = 20)) INHERITS (steads_params);
CREATE TABLE steads_params_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT steads_params_dir_check CHECK (dir = 21)) INHERITS (steads_params);
CREATE TABLE steads_params_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT steads_params_dir_check CHECK (dir = 22)) INHERITS (steads_params);
CREATE TABLE steads_params_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT steads_params_dir_check CHECK (dir = 23)) INHERITS (steads_params);
CREATE TABLE steads_params_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT steads_params_dir_check CHECK (dir = 24)) INHERITS (steads_params);
CREATE TABLE steads_params_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT steads_params_dir_check CHECK (dir = 25)) INHERITS (steads_params);
CREATE TABLE steads_params_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT steads_params_dir_check CHECK (dir = 26)) INHERITS (steads_params);
CREATE TABLE steads_params_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT steads_params_dir_check CHECK (dir = 27)) INHERITS (steads_params);
CREATE TABLE steads_params_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT steads_params_dir_check CHECK (dir = 28)) INHERITS (steads_params);
CREATE TABLE steads_params_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT steads_params_dir_check CHECK (dir = 29)) INHERITS (steads_params);
CREATE TABLE steads_params_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT steads_params_dir_check CHECK (dir = 30)) INHERITS (steads_params);
CREATE TABLE steads_params_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT steads_params_dir_check CHECK (dir = 31)) INHERITS (steads_params);
CREATE TABLE steads_params_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT steads_params_dir_check CHECK (dir = 32)) INHERITS (steads_params);
CREATE TABLE steads_params_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT steads_params_dir_check CHECK (dir = 33)) INHERITS (steads_params);
CREATE TABLE steads_params_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT steads_params_dir_check CHECK (dir = 34)) INHERITS (steads_params);
CREATE TABLE steads_params_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT steads_params_dir_check CHECK (dir = 35)) INHERITS (steads_params);
CREATE TABLE steads_params_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT steads_params_dir_check CHECK (dir = 36)) INHERITS (steads_params);
CREATE TABLE steads_params_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT steads_params_dir_check CHECK (dir = 37)) INHERITS (steads_params);
CREATE TABLE steads_params_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT steads_params_dir_check CHECK (dir = 38)) INHERITS (steads_params);
CREATE TABLE steads_params_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT steads_params_dir_check CHECK (dir = 39)) INHERITS (steads_params);
CREATE TABLE steads_params_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT steads_params_dir_check CHECK (dir = 40)) INHERITS (steads_params);
CREATE TABLE steads_params_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT steads_params_dir_check CHECK (dir = 41)) INHERITS (steads_params);
CREATE TABLE steads_params_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT steads_params_dir_check CHECK (dir = 42)) INHERITS (steads_params);
CREATE TABLE steads_params_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT steads_params_dir_check CHECK (dir = 43)) INHERITS (steads_params);
CREATE TABLE steads_params_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT steads_params_dir_check CHECK (dir = 44)) INHERITS (steads_params);
CREATE TABLE steads_params_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT steads_params_dir_check CHECK (dir = 45)) INHERITS (steads_params);
CREATE TABLE steads_params_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT steads_params_dir_check CHECK (dir = 46)) INHERITS (steads_params);
CREATE TABLE steads_params_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT steads_params_dir_check CHECK (dir = 47)) INHERITS (steads_params);
CREATE TABLE steads_params_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT steads_params_dir_check CHECK (dir = 48)) INHERITS (steads_params);
CREATE TABLE steads_params_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT steads_params_dir_check CHECK (dir = 49)) INHERITS (steads_params);
CREATE TABLE steads_params_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT steads_params_dir_check CHECK (dir = 50)) INHERITS (steads_params);
CREATE TABLE steads_params_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT steads_params_dir_check CHECK (dir = 51)) INHERITS (steads_params);
CREATE TABLE steads_params_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT steads_params_dir_check CHECK (dir = 52)) INHERITS (steads_params);
CREATE TABLE steads_params_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT steads_params_dir_check CHECK (dir = 53)) INHERITS (steads_params);
CREATE TABLE steads_params_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT steads_params_dir_check CHECK (dir = 54)) INHERITS (steads_params);
CREATE TABLE steads_params_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT steads_params_dir_check CHECK (dir = 55)) INHERITS (steads_params);
CREATE TABLE steads_params_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT steads_params_dir_check CHECK (dir = 56)) INHERITS (steads_params);
CREATE TABLE steads_params_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT steads_params_dir_check CHECK (dir = 57)) INHERITS (steads_params);
CREATE TABLE steads_params_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT steads_params_dir_check CHECK (dir = 58)) INHERITS (steads_params);
CREATE TABLE steads_params_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT steads_params_dir_check CHECK (dir = 59)) INHERITS (steads_params);
CREATE TABLE steads_params_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT steads_params_dir_check CHECK (dir = 60)) INHERITS (steads_params);
CREATE TABLE steads_params_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT steads_params_dir_check CHECK (dir = 61)) INHERITS (steads_params);
CREATE TABLE steads_params_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT steads_params_dir_check CHECK (dir = 62)) INHERITS (steads_params);
CREATE TABLE steads_params_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT steads_params_dir_check CHECK (dir = 63)) INHERITS (steads_params);
CREATE TABLE steads_params_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT steads_params_dir_check CHECK (dir = 64)) INHERITS (steads_params);
CREATE TABLE steads_params_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT steads_params_dir_check CHECK (dir = 65)) INHERITS (steads_params);
CREATE TABLE steads_params_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT steads_params_dir_check CHECK (dir = 66)) INHERITS (steads_params);
CREATE TABLE steads_params_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT steads_params_dir_check CHECK (dir = 67)) INHERITS (steads_params);
CREATE TABLE steads_params_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT steads_params_dir_check CHECK (dir = 68)) INHERITS (steads_params);
CREATE TABLE steads_params_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT steads_params_dir_check CHECK (dir = 69)) INHERITS (steads_params);
CREATE TABLE steads_params_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT steads_params_dir_check CHECK (dir = 70)) INHERITS (steads_params);
CREATE TABLE steads_params_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT steads_params_dir_check CHECK (dir = 71)) INHERITS (steads_params);
CREATE TABLE steads_params_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT steads_params_dir_check CHECK (dir = 72)) INHERITS (steads_params);
CREATE TABLE steads_params_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT steads_params_dir_check CHECK (dir = 73)) INHERITS (steads_params);
CREATE TABLE steads_params_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT steads_params_dir_check CHECK (dir = 74)) INHERITS (steads_params);
CREATE TABLE steads_params_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT steads_params_dir_check CHECK (dir = 75)) INHERITS (steads_params);
CREATE TABLE steads_params_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT steads_params_dir_check CHECK (dir = 76)) INHERITS (steads_params);
CREATE TABLE steads_params_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT steads_params_dir_check CHECK (dir = 77)) INHERITS (steads_params);
CREATE TABLE steads_params_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT steads_params_dir_check CHECK (dir = 78)) INHERITS (steads_params);
CREATE TABLE steads_params_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT steads_params_dir_check CHECK (dir = 79)) INHERITS (steads_params);
CREATE TABLE steads_params_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT steads_params_dir_check CHECK (dir = 80)) INHERITS (steads_params);
CREATE TABLE steads_params_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT steads_params_dir_check CHECK (dir = 81)) INHERITS (steads_params);
CREATE TABLE steads_params_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT steads_params_dir_check CHECK (dir = 82)) INHERITS (steads_params);
CREATE TABLE steads_params_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT steads_params_dir_check CHECK (dir = 83)) INHERITS (steads_params);
CREATE TABLE steads_params_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT steads_params_dir_check CHECK (dir = 84)) INHERITS (steads_params);
CREATE TABLE steads_params_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT steads_params_dir_check CHECK (dir = 85)) INHERITS (steads_params);
CREATE TABLE steads_params_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT steads_params_dir_check CHECK (dir = 86)) INHERITS (steads_params);
CREATE TABLE steads_params_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT steads_params_dir_check CHECK (dir = 87)) INHERITS (steads_params);
CREATE TABLE steads_params_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT steads_params_dir_check CHECK (dir = 88)) INHERITS (steads_params);
CREATE TABLE steads_params_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT steads_params_dir_check CHECK (dir = 89)) INHERITS (steads_params);
CREATE TABLE steads_params_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT steads_params_dir_check CHECK (dir = 90)) INHERITS (steads_params);
CREATE TABLE steads_params_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT steads_params_dir_check CHECK (dir = 91)) INHERITS (steads_params);
CREATE TABLE steads_params_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT steads_params_dir_check CHECK (dir = 92)) INHERITS (steads_params);
CREATE TABLE steads_params_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT steads_params_dir_check CHECK (dir = 93)) INHERITS (steads_params);
CREATE TABLE steads_params_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT steads_params_dir_check CHECK (dir = 94)) INHERITS (steads_params);
CREATE TABLE steads_params_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT steads_params_dir_check CHECK (dir = 95)) INHERITS (steads_params);
CREATE TABLE steads_params_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT steads_params_dir_check CHECK (dir = 96)) INHERITS (steads_params);
CREATE TABLE steads_params_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT steads_params_dir_check CHECK (dir = 97)) INHERITS (steads_params);
CREATE TABLE steads_params_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT steads_params_dir_check CHECK (dir = 98)) INHERITS (steads_params);
CREATE TABLE steads_params_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT steads_params_dir_check CHECK (dir = 99)) INHERITS (steads_params);
