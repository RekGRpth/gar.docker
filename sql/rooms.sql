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

CREATE TABLE rooms_01 (CONSTRAINT rooms_01_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_02 (CONSTRAINT rooms_02_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_03 (CONSTRAINT rooms_03_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_04 (CONSTRAINT rooms_04_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_05 (CONSTRAINT rooms_05_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_06 (CONSTRAINT rooms_06_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_07 (CONSTRAINT rooms_07_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_08 (CONSTRAINT rooms_08_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_09 (CONSTRAINT rooms_09_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_10 (CONSTRAINT rooms_10_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_11 (CONSTRAINT rooms_11_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_12 (CONSTRAINT rooms_12_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_13 (CONSTRAINT rooms_13_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_14 (CONSTRAINT rooms_14_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_15 (CONSTRAINT rooms_15_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_16 (CONSTRAINT rooms_16_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_17 (CONSTRAINT rooms_17_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_18 (CONSTRAINT rooms_18_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_19 (CONSTRAINT rooms_19_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_20 (CONSTRAINT rooms_20_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_21 (CONSTRAINT rooms_21_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_22 (CONSTRAINT rooms_22_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_23 (CONSTRAINT rooms_23_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_24 (CONSTRAINT rooms_24_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_25 (CONSTRAINT rooms_25_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_26 (CONSTRAINT rooms_26_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_27 (CONSTRAINT rooms_27_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_28 (CONSTRAINT rooms_28_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_29 (CONSTRAINT rooms_29_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_30 (CONSTRAINT rooms_30_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_31 (CONSTRAINT rooms_31_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_32 (CONSTRAINT rooms_32_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_33 (CONSTRAINT rooms_33_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_34 (CONSTRAINT rooms_34_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_35 (CONSTRAINT rooms_35_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_36 (CONSTRAINT rooms_36_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_37 (CONSTRAINT rooms_37_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_38 (CONSTRAINT rooms_38_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_39 (CONSTRAINT rooms_39_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_40 (CONSTRAINT rooms_40_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_41 (CONSTRAINT rooms_41_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_42 (CONSTRAINT rooms_42_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_43 (CONSTRAINT rooms_43_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_44 (CONSTRAINT rooms_44_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_45 (CONSTRAINT rooms_45_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_46 (CONSTRAINT rooms_46_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_47 (CONSTRAINT rooms_47_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_48 (CONSTRAINT rooms_48_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_49 (CONSTRAINT rooms_49_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_50 (CONSTRAINT rooms_50_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_51 (CONSTRAINT rooms_51_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_52 (CONSTRAINT rooms_52_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_53 (CONSTRAINT rooms_53_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_54 (CONSTRAINT rooms_54_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_55 (CONSTRAINT rooms_55_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_56 (CONSTRAINT rooms_56_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_57 (CONSTRAINT rooms_57_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_58 (CONSTRAINT rooms_58_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_59 (CONSTRAINT rooms_59_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_60 (CONSTRAINT rooms_60_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_61 (CONSTRAINT rooms_61_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_62 (CONSTRAINT rooms_62_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_63 (CONSTRAINT rooms_63_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_64 (CONSTRAINT rooms_64_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_65 (CONSTRAINT rooms_65_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_66 (CONSTRAINT rooms_66_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_67 (CONSTRAINT rooms_67_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_68 (CONSTRAINT rooms_68_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_69 (CONSTRAINT rooms_69_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_70 (CONSTRAINT rooms_70_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_71 (CONSTRAINT rooms_71_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_72 (CONSTRAINT rooms_72_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_73 (CONSTRAINT rooms_73_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_74 (CONSTRAINT rooms_74_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_75 (CONSTRAINT rooms_75_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_76 (CONSTRAINT rooms_76_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_77 (CONSTRAINT rooms_77_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_78 (CONSTRAINT rooms_78_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_79 (CONSTRAINT rooms_79_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_80 (CONSTRAINT rooms_80_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_81 (CONSTRAINT rooms_81_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_82 (CONSTRAINT rooms_82_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_83 (CONSTRAINT rooms_83_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_84 (CONSTRAINT rooms_84_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_85 (CONSTRAINT rooms_85_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_86 (CONSTRAINT rooms_86_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_87 (CONSTRAINT rooms_87_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_88 (CONSTRAINT rooms_88_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_89 (CONSTRAINT rooms_89_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_90 (CONSTRAINT rooms_90_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_91 (CONSTRAINT rooms_91_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_92 (CONSTRAINT rooms_92_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_93 (CONSTRAINT rooms_93_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_94 (CONSTRAINT rooms_94_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_95 (CONSTRAINT rooms_95_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_96 (CONSTRAINT rooms_96_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_97 (CONSTRAINT rooms_97_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_98 (CONSTRAINT rooms_98_pkey PRIMARY KEY (id)) INHERITS (rooms);
CREATE TABLE rooms_99 (CONSTRAINT rooms_99_pkey PRIMARY KEY (id)) INHERITS (rooms);
