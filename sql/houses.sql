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
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir));
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

CREATE TABLE houses_01 PARTITION OF houses FOR VALUES IN (01);
CREATE TABLE houses_02 PARTITION OF houses FOR VALUES IN (02);
CREATE TABLE houses_03 PARTITION OF houses FOR VALUES IN (03);
CREATE TABLE houses_04 PARTITION OF houses FOR VALUES IN (04);
CREATE TABLE houses_05 PARTITION OF houses FOR VALUES IN (05);
CREATE TABLE houses_06 PARTITION OF houses FOR VALUES IN (06);
CREATE TABLE houses_07 PARTITION OF houses FOR VALUES IN (07);
CREATE TABLE houses_08 PARTITION OF houses FOR VALUES IN (08);
CREATE TABLE houses_09 PARTITION OF houses FOR VALUES IN (09);
CREATE TABLE houses_10 PARTITION OF houses FOR VALUES IN (10);
CREATE TABLE houses_11 PARTITION OF houses FOR VALUES IN (11);
CREATE TABLE houses_12 PARTITION OF houses FOR VALUES IN (12);
CREATE TABLE houses_13 PARTITION OF houses FOR VALUES IN (13);
CREATE TABLE houses_14 PARTITION OF houses FOR VALUES IN (14);
CREATE TABLE houses_15 PARTITION OF houses FOR VALUES IN (15);
CREATE TABLE houses_16 PARTITION OF houses FOR VALUES IN (16);
CREATE TABLE houses_17 PARTITION OF houses FOR VALUES IN (17);
CREATE TABLE houses_18 PARTITION OF houses FOR VALUES IN (18);
CREATE TABLE houses_19 PARTITION OF houses FOR VALUES IN (19);
CREATE TABLE houses_20 PARTITION OF houses FOR VALUES IN (20);
CREATE TABLE houses_21 PARTITION OF houses FOR VALUES IN (21);
CREATE TABLE houses_22 PARTITION OF houses FOR VALUES IN (22);
CREATE TABLE houses_23 PARTITION OF houses FOR VALUES IN (23);
CREATE TABLE houses_24 PARTITION OF houses FOR VALUES IN (24);
CREATE TABLE houses_25 PARTITION OF houses FOR VALUES IN (25);
CREATE TABLE houses_26 PARTITION OF houses FOR VALUES IN (26);
CREATE TABLE houses_27 PARTITION OF houses FOR VALUES IN (27);
CREATE TABLE houses_28 PARTITION OF houses FOR VALUES IN (28);
CREATE TABLE houses_29 PARTITION OF houses FOR VALUES IN (29);
CREATE TABLE houses_30 PARTITION OF houses FOR VALUES IN (30);
CREATE TABLE houses_31 PARTITION OF houses FOR VALUES IN (31);
CREATE TABLE houses_32 PARTITION OF houses FOR VALUES IN (32);
CREATE TABLE houses_33 PARTITION OF houses FOR VALUES IN (33);
CREATE TABLE houses_34 PARTITION OF houses FOR VALUES IN (34);
CREATE TABLE houses_35 PARTITION OF houses FOR VALUES IN (35);
CREATE TABLE houses_36 PARTITION OF houses FOR VALUES IN (36);
CREATE TABLE houses_37 PARTITION OF houses FOR VALUES IN (37);
CREATE TABLE houses_38 PARTITION OF houses FOR VALUES IN (38);
CREATE TABLE houses_39 PARTITION OF houses FOR VALUES IN (39);
CREATE TABLE houses_40 PARTITION OF houses FOR VALUES IN (40);
CREATE TABLE houses_41 PARTITION OF houses FOR VALUES IN (41);
CREATE TABLE houses_42 PARTITION OF houses FOR VALUES IN (42);
CREATE TABLE houses_43 PARTITION OF houses FOR VALUES IN (43);
CREATE TABLE houses_44 PARTITION OF houses FOR VALUES IN (44);
CREATE TABLE houses_45 PARTITION OF houses FOR VALUES IN (45);
CREATE TABLE houses_46 PARTITION OF houses FOR VALUES IN (46);
CREATE TABLE houses_47 PARTITION OF houses FOR VALUES IN (47);
CREATE TABLE houses_48 PARTITION OF houses FOR VALUES IN (48);
CREATE TABLE houses_49 PARTITION OF houses FOR VALUES IN (49);
CREATE TABLE houses_50 PARTITION OF houses FOR VALUES IN (50);
CREATE TABLE houses_51 PARTITION OF houses FOR VALUES IN (51);
CREATE TABLE houses_52 PARTITION OF houses FOR VALUES IN (52);
CREATE TABLE houses_53 PARTITION OF houses FOR VALUES IN (53);
CREATE TABLE houses_54 PARTITION OF houses FOR VALUES IN (54);
CREATE TABLE houses_55 PARTITION OF houses FOR VALUES IN (55);
CREATE TABLE houses_56 PARTITION OF houses FOR VALUES IN (56);
CREATE TABLE houses_57 PARTITION OF houses FOR VALUES IN (57);
CREATE TABLE houses_58 PARTITION OF houses FOR VALUES IN (58);
CREATE TABLE houses_59 PARTITION OF houses FOR VALUES IN (59);
CREATE TABLE houses_60 PARTITION OF houses FOR VALUES IN (60);
CREATE TABLE houses_61 PARTITION OF houses FOR VALUES IN (61);
CREATE TABLE houses_62 PARTITION OF houses FOR VALUES IN (62);
CREATE TABLE houses_63 PARTITION OF houses FOR VALUES IN (63);
CREATE TABLE houses_64 PARTITION OF houses FOR VALUES IN (64);
CREATE TABLE houses_65 PARTITION OF houses FOR VALUES IN (65);
CREATE TABLE houses_66 PARTITION OF houses FOR VALUES IN (66);
CREATE TABLE houses_67 PARTITION OF houses FOR VALUES IN (67);
CREATE TABLE houses_68 PARTITION OF houses FOR VALUES IN (68);
CREATE TABLE houses_69 PARTITION OF houses FOR VALUES IN (69);
CREATE TABLE houses_70 PARTITION OF houses FOR VALUES IN (70);
CREATE TABLE houses_71 PARTITION OF houses FOR VALUES IN (71);
CREATE TABLE houses_72 PARTITION OF houses FOR VALUES IN (72);
CREATE TABLE houses_73 PARTITION OF houses FOR VALUES IN (73);
CREATE TABLE houses_74 PARTITION OF houses FOR VALUES IN (74);
CREATE TABLE houses_75 PARTITION OF houses FOR VALUES IN (75);
CREATE TABLE houses_76 PARTITION OF houses FOR VALUES IN (76);
CREATE TABLE houses_77 PARTITION OF houses FOR VALUES IN (77);
CREATE TABLE houses_78 PARTITION OF houses FOR VALUES IN (78);
CREATE TABLE houses_79 PARTITION OF houses FOR VALUES IN (79);
CREATE TABLE houses_80 PARTITION OF houses FOR VALUES IN (80);
CREATE TABLE houses_81 PARTITION OF houses FOR VALUES IN (81);
CREATE TABLE houses_82 PARTITION OF houses FOR VALUES IN (82);
CREATE TABLE houses_83 PARTITION OF houses FOR VALUES IN (83);
CREATE TABLE houses_84 PARTITION OF houses FOR VALUES IN (84);
CREATE TABLE houses_85 PARTITION OF houses FOR VALUES IN (85);
CREATE TABLE houses_86 PARTITION OF houses FOR VALUES IN (86);
CREATE TABLE houses_87 PARTITION OF houses FOR VALUES IN (87);
CREATE TABLE houses_88 PARTITION OF houses FOR VALUES IN (88);
CREATE TABLE houses_89 PARTITION OF houses FOR VALUES IN (89);
CREATE TABLE houses_90 PARTITION OF houses FOR VALUES IN (90);
CREATE TABLE houses_91 PARTITION OF houses FOR VALUES IN (91);
CREATE TABLE houses_92 PARTITION OF houses FOR VALUES IN (92);
CREATE TABLE houses_93 PARTITION OF houses FOR VALUES IN (93);
CREATE TABLE houses_94 PARTITION OF houses FOR VALUES IN (94);
CREATE TABLE houses_95 PARTITION OF houses FOR VALUES IN (95);
CREATE TABLE houses_96 PARTITION OF houses FOR VALUES IN (96);
CREATE TABLE houses_97 PARTITION OF houses FOR VALUES IN (97);
CREATE TABLE houses_98 PARTITION OF houses FOR VALUES IN (98);
CREATE TABLE houses_99 PARTITION OF houses FOR VALUES IN (99);
