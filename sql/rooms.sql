CREATE TABLE rooms (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  number VARCHAR(50) NOT NULL,
  roomtype INT NOT NULL,
  opertypeid INT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL
);
COMMENT ON TABLE rooms IS 'Сведения по комнатам';
COMMENT ON COLUMN rooms.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN rooms.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN rooms.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN rooms.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN rooms.number IS 'Номер комнаты или офиса';
COMMENT ON COLUMN rooms.roomtype IS 'Тип комнаты или офиса';
COMMENT ON COLUMN rooms.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN rooms.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN rooms.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN rooms.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN rooms.startdate IS 'Начало действия записи';
COMMENT ON COLUMN rooms.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN rooms.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN rooms.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE rooms_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT rooms_dir_check CHECK (dir = 01)) INHERITS (rooms);
CREATE TABLE rooms_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT rooms_dir_check CHECK (dir = 02)) INHERITS (rooms);
CREATE TABLE rooms_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT rooms_dir_check CHECK (dir = 03)) INHERITS (rooms);
CREATE TABLE rooms_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT rooms_dir_check CHECK (dir = 04)) INHERITS (rooms);
CREATE TABLE rooms_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT rooms_dir_check CHECK (dir = 05)) INHERITS (rooms);
CREATE TABLE rooms_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT rooms_dir_check CHECK (dir = 06)) INHERITS (rooms);
CREATE TABLE rooms_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT rooms_dir_check CHECK (dir = 07)) INHERITS (rooms);
CREATE TABLE rooms_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT rooms_dir_check CHECK (dir = 08)) INHERITS (rooms);
CREATE TABLE rooms_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT rooms_dir_check CHECK (dir = 09)) INHERITS (rooms);
CREATE TABLE rooms_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT rooms_dir_check CHECK (dir = 10)) INHERITS (rooms);
CREATE TABLE rooms_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT rooms_dir_check CHECK (dir = 11)) INHERITS (rooms);
CREATE TABLE rooms_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT rooms_dir_check CHECK (dir = 12)) INHERITS (rooms);
CREATE TABLE rooms_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT rooms_dir_check CHECK (dir = 13)) INHERITS (rooms);
CREATE TABLE rooms_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT rooms_dir_check CHECK (dir = 14)) INHERITS (rooms);
CREATE TABLE rooms_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT rooms_dir_check CHECK (dir = 15)) INHERITS (rooms);
CREATE TABLE rooms_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT rooms_dir_check CHECK (dir = 16)) INHERITS (rooms);
CREATE TABLE rooms_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT rooms_dir_check CHECK (dir = 17)) INHERITS (rooms);
CREATE TABLE rooms_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT rooms_dir_check CHECK (dir = 18)) INHERITS (rooms);
CREATE TABLE rooms_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT rooms_dir_check CHECK (dir = 19)) INHERITS (rooms);
CREATE TABLE rooms_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT rooms_dir_check CHECK (dir = 20)) INHERITS (rooms);
CREATE TABLE rooms_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT rooms_dir_check CHECK (dir = 21)) INHERITS (rooms);
CREATE TABLE rooms_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT rooms_dir_check CHECK (dir = 22)) INHERITS (rooms);
CREATE TABLE rooms_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT rooms_dir_check CHECK (dir = 23)) INHERITS (rooms);
CREATE TABLE rooms_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT rooms_dir_check CHECK (dir = 24)) INHERITS (rooms);
CREATE TABLE rooms_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT rooms_dir_check CHECK (dir = 25)) INHERITS (rooms);
CREATE TABLE rooms_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT rooms_dir_check CHECK (dir = 26)) INHERITS (rooms);
CREATE TABLE rooms_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT rooms_dir_check CHECK (dir = 27)) INHERITS (rooms);
CREATE TABLE rooms_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT rooms_dir_check CHECK (dir = 28)) INHERITS (rooms);
CREATE TABLE rooms_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT rooms_dir_check CHECK (dir = 29)) INHERITS (rooms);
CREATE TABLE rooms_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT rooms_dir_check CHECK (dir = 30)) INHERITS (rooms);
CREATE TABLE rooms_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT rooms_dir_check CHECK (dir = 31)) INHERITS (rooms);
CREATE TABLE rooms_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT rooms_dir_check CHECK (dir = 32)) INHERITS (rooms);
CREATE TABLE rooms_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT rooms_dir_check CHECK (dir = 33)) INHERITS (rooms);
CREATE TABLE rooms_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT rooms_dir_check CHECK (dir = 34)) INHERITS (rooms);
CREATE TABLE rooms_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT rooms_dir_check CHECK (dir = 35)) INHERITS (rooms);
CREATE TABLE rooms_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT rooms_dir_check CHECK (dir = 36)) INHERITS (rooms);
CREATE TABLE rooms_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT rooms_dir_check CHECK (dir = 37)) INHERITS (rooms);
CREATE TABLE rooms_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT rooms_dir_check CHECK (dir = 38)) INHERITS (rooms);
CREATE TABLE rooms_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT rooms_dir_check CHECK (dir = 39)) INHERITS (rooms);
CREATE TABLE rooms_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT rooms_dir_check CHECK (dir = 40)) INHERITS (rooms);
CREATE TABLE rooms_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT rooms_dir_check CHECK (dir = 41)) INHERITS (rooms);
CREATE TABLE rooms_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT rooms_dir_check CHECK (dir = 42)) INHERITS (rooms);
CREATE TABLE rooms_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT rooms_dir_check CHECK (dir = 43)) INHERITS (rooms);
CREATE TABLE rooms_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT rooms_dir_check CHECK (dir = 44)) INHERITS (rooms);
CREATE TABLE rooms_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT rooms_dir_check CHECK (dir = 45)) INHERITS (rooms);
CREATE TABLE rooms_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT rooms_dir_check CHECK (dir = 46)) INHERITS (rooms);
CREATE TABLE rooms_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT rooms_dir_check CHECK (dir = 47)) INHERITS (rooms);
CREATE TABLE rooms_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT rooms_dir_check CHECK (dir = 48)) INHERITS (rooms);
CREATE TABLE rooms_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT rooms_dir_check CHECK (dir = 49)) INHERITS (rooms);
CREATE TABLE rooms_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT rooms_dir_check CHECK (dir = 50)) INHERITS (rooms);
CREATE TABLE rooms_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT rooms_dir_check CHECK (dir = 51)) INHERITS (rooms);
CREATE TABLE rooms_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT rooms_dir_check CHECK (dir = 52)) INHERITS (rooms);
CREATE TABLE rooms_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT rooms_dir_check CHECK (dir = 53)) INHERITS (rooms);
CREATE TABLE rooms_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT rooms_dir_check CHECK (dir = 54)) INHERITS (rooms);
CREATE TABLE rooms_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT rooms_dir_check CHECK (dir = 55)) INHERITS (rooms);
CREATE TABLE rooms_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT rooms_dir_check CHECK (dir = 56)) INHERITS (rooms);
CREATE TABLE rooms_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT rooms_dir_check CHECK (dir = 57)) INHERITS (rooms);
CREATE TABLE rooms_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT rooms_dir_check CHECK (dir = 58)) INHERITS (rooms);
CREATE TABLE rooms_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT rooms_dir_check CHECK (dir = 59)) INHERITS (rooms);
CREATE TABLE rooms_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT rooms_dir_check CHECK (dir = 60)) INHERITS (rooms);
CREATE TABLE rooms_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT rooms_dir_check CHECK (dir = 61)) INHERITS (rooms);
CREATE TABLE rooms_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT rooms_dir_check CHECK (dir = 62)) INHERITS (rooms);
CREATE TABLE rooms_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT rooms_dir_check CHECK (dir = 63)) INHERITS (rooms);
CREATE TABLE rooms_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT rooms_dir_check CHECK (dir = 64)) INHERITS (rooms);
CREATE TABLE rooms_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT rooms_dir_check CHECK (dir = 65)) INHERITS (rooms);
CREATE TABLE rooms_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT rooms_dir_check CHECK (dir = 66)) INHERITS (rooms);
CREATE TABLE rooms_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT rooms_dir_check CHECK (dir = 67)) INHERITS (rooms);
CREATE TABLE rooms_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT rooms_dir_check CHECK (dir = 68)) INHERITS (rooms);
CREATE TABLE rooms_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT rooms_dir_check CHECK (dir = 69)) INHERITS (rooms);
CREATE TABLE rooms_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT rooms_dir_check CHECK (dir = 70)) INHERITS (rooms);
CREATE TABLE rooms_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT rooms_dir_check CHECK (dir = 71)) INHERITS (rooms);
CREATE TABLE rooms_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT rooms_dir_check CHECK (dir = 72)) INHERITS (rooms);
CREATE TABLE rooms_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT rooms_dir_check CHECK (dir = 73)) INHERITS (rooms);
CREATE TABLE rooms_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT rooms_dir_check CHECK (dir = 74)) INHERITS (rooms);
CREATE TABLE rooms_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT rooms_dir_check CHECK (dir = 75)) INHERITS (rooms);
CREATE TABLE rooms_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT rooms_dir_check CHECK (dir = 76)) INHERITS (rooms);
CREATE TABLE rooms_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT rooms_dir_check CHECK (dir = 77)) INHERITS (rooms);
CREATE TABLE rooms_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT rooms_dir_check CHECK (dir = 78)) INHERITS (rooms);
CREATE TABLE rooms_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT rooms_dir_check CHECK (dir = 79)) INHERITS (rooms);
CREATE TABLE rooms_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT rooms_dir_check CHECK (dir = 80)) INHERITS (rooms);
CREATE TABLE rooms_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT rooms_dir_check CHECK (dir = 81)) INHERITS (rooms);
CREATE TABLE rooms_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT rooms_dir_check CHECK (dir = 82)) INHERITS (rooms);
CREATE TABLE rooms_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT rooms_dir_check CHECK (dir = 83)) INHERITS (rooms);
CREATE TABLE rooms_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT rooms_dir_check CHECK (dir = 84)) INHERITS (rooms);
CREATE TABLE rooms_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT rooms_dir_check CHECK (dir = 85)) INHERITS (rooms);
CREATE TABLE rooms_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT rooms_dir_check CHECK (dir = 86)) INHERITS (rooms);
CREATE TABLE rooms_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT rooms_dir_check CHECK (dir = 87)) INHERITS (rooms);
CREATE TABLE rooms_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT rooms_dir_check CHECK (dir = 88)) INHERITS (rooms);
CREATE TABLE rooms_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT rooms_dir_check CHECK (dir = 89)) INHERITS (rooms);
CREATE TABLE rooms_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT rooms_dir_check CHECK (dir = 90)) INHERITS (rooms);
CREATE TABLE rooms_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT rooms_dir_check CHECK (dir = 91)) INHERITS (rooms);
CREATE TABLE rooms_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT rooms_dir_check CHECK (dir = 92)) INHERITS (rooms);
CREATE TABLE rooms_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT rooms_dir_check CHECK (dir = 93)) INHERITS (rooms);
CREATE TABLE rooms_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT rooms_dir_check CHECK (dir = 94)) INHERITS (rooms);
CREATE TABLE rooms_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT rooms_dir_check CHECK (dir = 95)) INHERITS (rooms);
CREATE TABLE rooms_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT rooms_dir_check CHECK (dir = 96)) INHERITS (rooms);
CREATE TABLE rooms_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT rooms_dir_check CHECK (dir = 97)) INHERITS (rooms);
CREATE TABLE rooms_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT rooms_dir_check CHECK (dir = 98)) INHERITS (rooms);
CREATE TABLE rooms_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT rooms_dir_check CHECK (dir = 99)) INHERITS (rooms);
