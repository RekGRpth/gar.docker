CREATE TABLE rooms_params (
    param TEXT NOT NULL DEFAULT 'rooms',
    CONSTRAINT rooms_params_param_check CHECK (param = 'rooms')
) INHERITS (param);
COMMENT ON TABLE rooms_params IS 'Сведения о классификаторе параметров адресообразующих элементов и объектов недвижимости ';
COMMENT ON COLUMN rooms_params.id IS 'Идентификатор записи';
COMMENT ON COLUMN rooms_params.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN rooms_params.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN rooms_params.changeidend IS 'ID завершившей транзакции';
COMMENT ON COLUMN rooms_params.typeid IS 'Тип параметра';
COMMENT ON COLUMN rooms_params.value IS 'Значение параметра';
COMMENT ON COLUMN rooms_params.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN rooms_params.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN rooms_params.enddate IS 'Дата окончания действия записи';

CREATE TABLE rooms_params_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT rooms_params_dir_check CHECK (dir = 01)) INHERITS (rooms_params);
CREATE TABLE rooms_params_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT rooms_params_dir_check CHECK (dir = 02)) INHERITS (rooms_params);
CREATE TABLE rooms_params_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT rooms_params_dir_check CHECK (dir = 03)) INHERITS (rooms_params);
CREATE TABLE rooms_params_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT rooms_params_dir_check CHECK (dir = 04)) INHERITS (rooms_params);
CREATE TABLE rooms_params_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT rooms_params_dir_check CHECK (dir = 05)) INHERITS (rooms_params);
CREATE TABLE rooms_params_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT rooms_params_dir_check CHECK (dir = 06)) INHERITS (rooms_params);
CREATE TABLE rooms_params_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT rooms_params_dir_check CHECK (dir = 07)) INHERITS (rooms_params);
CREATE TABLE rooms_params_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT rooms_params_dir_check CHECK (dir = 08)) INHERITS (rooms_params);
CREATE TABLE rooms_params_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT rooms_params_dir_check CHECK (dir = 09)) INHERITS (rooms_params);
CREATE TABLE rooms_params_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT rooms_params_dir_check CHECK (dir = 10)) INHERITS (rooms_params);
CREATE TABLE rooms_params_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT rooms_params_dir_check CHECK (dir = 11)) INHERITS (rooms_params);
CREATE TABLE rooms_params_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT rooms_params_dir_check CHECK (dir = 12)) INHERITS (rooms_params);
CREATE TABLE rooms_params_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT rooms_params_dir_check CHECK (dir = 13)) INHERITS (rooms_params);
CREATE TABLE rooms_params_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT rooms_params_dir_check CHECK (dir = 14)) INHERITS (rooms_params);
CREATE TABLE rooms_params_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT rooms_params_dir_check CHECK (dir = 15)) INHERITS (rooms_params);
CREATE TABLE rooms_params_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT rooms_params_dir_check CHECK (dir = 16)) INHERITS (rooms_params);
CREATE TABLE rooms_params_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT rooms_params_dir_check CHECK (dir = 17)) INHERITS (rooms_params);
CREATE TABLE rooms_params_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT rooms_params_dir_check CHECK (dir = 18)) INHERITS (rooms_params);
CREATE TABLE rooms_params_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT rooms_params_dir_check CHECK (dir = 19)) INHERITS (rooms_params);
CREATE TABLE rooms_params_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT rooms_params_dir_check CHECK (dir = 20)) INHERITS (rooms_params);
CREATE TABLE rooms_params_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT rooms_params_dir_check CHECK (dir = 21)) INHERITS (rooms_params);
CREATE TABLE rooms_params_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT rooms_params_dir_check CHECK (dir = 22)) INHERITS (rooms_params);
CREATE TABLE rooms_params_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT rooms_params_dir_check CHECK (dir = 23)) INHERITS (rooms_params);
CREATE TABLE rooms_params_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT rooms_params_dir_check CHECK (dir = 24)) INHERITS (rooms_params);
CREATE TABLE rooms_params_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT rooms_params_dir_check CHECK (dir = 25)) INHERITS (rooms_params);
CREATE TABLE rooms_params_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT rooms_params_dir_check CHECK (dir = 26)) INHERITS (rooms_params);
CREATE TABLE rooms_params_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT rooms_params_dir_check CHECK (dir = 27)) INHERITS (rooms_params);
CREATE TABLE rooms_params_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT rooms_params_dir_check CHECK (dir = 28)) INHERITS (rooms_params);
CREATE TABLE rooms_params_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT rooms_params_dir_check CHECK (dir = 29)) INHERITS (rooms_params);
CREATE TABLE rooms_params_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT rooms_params_dir_check CHECK (dir = 30)) INHERITS (rooms_params);
CREATE TABLE rooms_params_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT rooms_params_dir_check CHECK (dir = 31)) INHERITS (rooms_params);
CREATE TABLE rooms_params_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT rooms_params_dir_check CHECK (dir = 32)) INHERITS (rooms_params);
CREATE TABLE rooms_params_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT rooms_params_dir_check CHECK (dir = 33)) INHERITS (rooms_params);
CREATE TABLE rooms_params_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT rooms_params_dir_check CHECK (dir = 34)) INHERITS (rooms_params);
CREATE TABLE rooms_params_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT rooms_params_dir_check CHECK (dir = 35)) INHERITS (rooms_params);
CREATE TABLE rooms_params_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT rooms_params_dir_check CHECK (dir = 36)) INHERITS (rooms_params);
CREATE TABLE rooms_params_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT rooms_params_dir_check CHECK (dir = 37)) INHERITS (rooms_params);
CREATE TABLE rooms_params_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT rooms_params_dir_check CHECK (dir = 38)) INHERITS (rooms_params);
CREATE TABLE rooms_params_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT rooms_params_dir_check CHECK (dir = 39)) INHERITS (rooms_params);
CREATE TABLE rooms_params_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT rooms_params_dir_check CHECK (dir = 40)) INHERITS (rooms_params);
CREATE TABLE rooms_params_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT rooms_params_dir_check CHECK (dir = 41)) INHERITS (rooms_params);
CREATE TABLE rooms_params_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT rooms_params_dir_check CHECK (dir = 42)) INHERITS (rooms_params);
CREATE TABLE rooms_params_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT rooms_params_dir_check CHECK (dir = 43)) INHERITS (rooms_params);
CREATE TABLE rooms_params_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT rooms_params_dir_check CHECK (dir = 44)) INHERITS (rooms_params);
CREATE TABLE rooms_params_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT rooms_params_dir_check CHECK (dir = 45)) INHERITS (rooms_params);
CREATE TABLE rooms_params_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT rooms_params_dir_check CHECK (dir = 46)) INHERITS (rooms_params);
CREATE TABLE rooms_params_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT rooms_params_dir_check CHECK (dir = 47)) INHERITS (rooms_params);
CREATE TABLE rooms_params_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT rooms_params_dir_check CHECK (dir = 48)) INHERITS (rooms_params);
CREATE TABLE rooms_params_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT rooms_params_dir_check CHECK (dir = 49)) INHERITS (rooms_params);
CREATE TABLE rooms_params_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT rooms_params_dir_check CHECK (dir = 50)) INHERITS (rooms_params);
CREATE TABLE rooms_params_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT rooms_params_dir_check CHECK (dir = 51)) INHERITS (rooms_params);
CREATE TABLE rooms_params_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT rooms_params_dir_check CHECK (dir = 52)) INHERITS (rooms_params);
CREATE TABLE rooms_params_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT rooms_params_dir_check CHECK (dir = 53)) INHERITS (rooms_params);
CREATE TABLE rooms_params_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT rooms_params_dir_check CHECK (dir = 54)) INHERITS (rooms_params);
CREATE TABLE rooms_params_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT rooms_params_dir_check CHECK (dir = 55)) INHERITS (rooms_params);
CREATE TABLE rooms_params_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT rooms_params_dir_check CHECK (dir = 56)) INHERITS (rooms_params);
CREATE TABLE rooms_params_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT rooms_params_dir_check CHECK (dir = 57)) INHERITS (rooms_params);
CREATE TABLE rooms_params_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT rooms_params_dir_check CHECK (dir = 58)) INHERITS (rooms_params);
CREATE TABLE rooms_params_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT rooms_params_dir_check CHECK (dir = 59)) INHERITS (rooms_params);
CREATE TABLE rooms_params_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT rooms_params_dir_check CHECK (dir = 60)) INHERITS (rooms_params);
CREATE TABLE rooms_params_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT rooms_params_dir_check CHECK (dir = 61)) INHERITS (rooms_params);
CREATE TABLE rooms_params_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT rooms_params_dir_check CHECK (dir = 62)) INHERITS (rooms_params);
CREATE TABLE rooms_params_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT rooms_params_dir_check CHECK (dir = 63)) INHERITS (rooms_params);
CREATE TABLE rooms_params_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT rooms_params_dir_check CHECK (dir = 64)) INHERITS (rooms_params);
CREATE TABLE rooms_params_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT rooms_params_dir_check CHECK (dir = 65)) INHERITS (rooms_params);
CREATE TABLE rooms_params_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT rooms_params_dir_check CHECK (dir = 66)) INHERITS (rooms_params);
CREATE TABLE rooms_params_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT rooms_params_dir_check CHECK (dir = 67)) INHERITS (rooms_params);
CREATE TABLE rooms_params_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT rooms_params_dir_check CHECK (dir = 68)) INHERITS (rooms_params);
CREATE TABLE rooms_params_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT rooms_params_dir_check CHECK (dir = 69)) INHERITS (rooms_params);
CREATE TABLE rooms_params_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT rooms_params_dir_check CHECK (dir = 70)) INHERITS (rooms_params);
CREATE TABLE rooms_params_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT rooms_params_dir_check CHECK (dir = 71)) INHERITS (rooms_params);
CREATE TABLE rooms_params_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT rooms_params_dir_check CHECK (dir = 72)) INHERITS (rooms_params);
CREATE TABLE rooms_params_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT rooms_params_dir_check CHECK (dir = 73)) INHERITS (rooms_params);
CREATE TABLE rooms_params_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT rooms_params_dir_check CHECK (dir = 74)) INHERITS (rooms_params);
CREATE TABLE rooms_params_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT rooms_params_dir_check CHECK (dir = 75)) INHERITS (rooms_params);
CREATE TABLE rooms_params_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT rooms_params_dir_check CHECK (dir = 76)) INHERITS (rooms_params);
CREATE TABLE rooms_params_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT rooms_params_dir_check CHECK (dir = 77)) INHERITS (rooms_params);
CREATE TABLE rooms_params_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT rooms_params_dir_check CHECK (dir = 78)) INHERITS (rooms_params);
CREATE TABLE rooms_params_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT rooms_params_dir_check CHECK (dir = 79)) INHERITS (rooms_params);
CREATE TABLE rooms_params_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT rooms_params_dir_check CHECK (dir = 80)) INHERITS (rooms_params);
CREATE TABLE rooms_params_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT rooms_params_dir_check CHECK (dir = 81)) INHERITS (rooms_params);
CREATE TABLE rooms_params_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT rooms_params_dir_check CHECK (dir = 82)) INHERITS (rooms_params);
CREATE TABLE rooms_params_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT rooms_params_dir_check CHECK (dir = 83)) INHERITS (rooms_params);
CREATE TABLE rooms_params_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT rooms_params_dir_check CHECK (dir = 84)) INHERITS (rooms_params);
CREATE TABLE rooms_params_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT rooms_params_dir_check CHECK (dir = 85)) INHERITS (rooms_params);
CREATE TABLE rooms_params_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT rooms_params_dir_check CHECK (dir = 86)) INHERITS (rooms_params);
CREATE TABLE rooms_params_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT rooms_params_dir_check CHECK (dir = 87)) INHERITS (rooms_params);
CREATE TABLE rooms_params_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT rooms_params_dir_check CHECK (dir = 88)) INHERITS (rooms_params);
CREATE TABLE rooms_params_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT rooms_params_dir_check CHECK (dir = 89)) INHERITS (rooms_params);
CREATE TABLE rooms_params_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT rooms_params_dir_check CHECK (dir = 90)) INHERITS (rooms_params);
CREATE TABLE rooms_params_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT rooms_params_dir_check CHECK (dir = 91)) INHERITS (rooms_params);
CREATE TABLE rooms_params_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT rooms_params_dir_check CHECK (dir = 92)) INHERITS (rooms_params);
CREATE TABLE rooms_params_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT rooms_params_dir_check CHECK (dir = 93)) INHERITS (rooms_params);
CREATE TABLE rooms_params_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT rooms_params_dir_check CHECK (dir = 94)) INHERITS (rooms_params);
CREATE TABLE rooms_params_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT rooms_params_dir_check CHECK (dir = 95)) INHERITS (rooms_params);
CREATE TABLE rooms_params_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT rooms_params_dir_check CHECK (dir = 96)) INHERITS (rooms_params);
CREATE TABLE rooms_params_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT rooms_params_dir_check CHECK (dir = 97)) INHERITS (rooms_params);
CREATE TABLE rooms_params_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT rooms_params_dir_check CHECK (dir = 98)) INHERITS (rooms_params);
CREATE TABLE rooms_params_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT rooms_params_dir_check CHECK (dir = 99)) INHERITS (rooms_params);
