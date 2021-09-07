CREATE TABLE carplaces (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  number VARCHAR(50) NOT NULL,
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
COMMENT ON TABLE carplaces IS 'Сведения по машино-местам';
COMMENT ON COLUMN carplaces.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN carplaces.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN carplaces.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN carplaces.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN carplaces.number IS 'Номер машиноместа';
COMMENT ON COLUMN carplaces.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN carplaces.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN carplaces.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN carplaces.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN carplaces.startdate IS 'Начало действия записи';
COMMENT ON COLUMN carplaces.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN carplaces.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN carplaces.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE carplaces_01 PARTITION OF carplaces FOR VALUES IN (01);
CREATE TABLE carplaces_02 PARTITION OF carplaces FOR VALUES IN (02);
CREATE TABLE carplaces_03 PARTITION OF carplaces FOR VALUES IN (03);
CREATE TABLE carplaces_04 PARTITION OF carplaces FOR VALUES IN (04);
CREATE TABLE carplaces_05 PARTITION OF carplaces FOR VALUES IN (05);
CREATE TABLE carplaces_06 PARTITION OF carplaces FOR VALUES IN (06);
CREATE TABLE carplaces_07 PARTITION OF carplaces FOR VALUES IN (07);
CREATE TABLE carplaces_08 PARTITION OF carplaces FOR VALUES IN (08);
CREATE TABLE carplaces_09 PARTITION OF carplaces FOR VALUES IN (09);
CREATE TABLE carplaces_10 PARTITION OF carplaces FOR VALUES IN (10);
CREATE TABLE carplaces_11 PARTITION OF carplaces FOR VALUES IN (11);
CREATE TABLE carplaces_12 PARTITION OF carplaces FOR VALUES IN (12);
CREATE TABLE carplaces_13 PARTITION OF carplaces FOR VALUES IN (13);
CREATE TABLE carplaces_14 PARTITION OF carplaces FOR VALUES IN (14);
CREATE TABLE carplaces_15 PARTITION OF carplaces FOR VALUES IN (15);
CREATE TABLE carplaces_16 PARTITION OF carplaces FOR VALUES IN (16);
CREATE TABLE carplaces_17 PARTITION OF carplaces FOR VALUES IN (17);
CREATE TABLE carplaces_18 PARTITION OF carplaces FOR VALUES IN (18);
CREATE TABLE carplaces_19 PARTITION OF carplaces FOR VALUES IN (19);
CREATE TABLE carplaces_20 PARTITION OF carplaces FOR VALUES IN (20);
CREATE TABLE carplaces_21 PARTITION OF carplaces FOR VALUES IN (21);
CREATE TABLE carplaces_22 PARTITION OF carplaces FOR VALUES IN (22);
CREATE TABLE carplaces_23 PARTITION OF carplaces FOR VALUES IN (23);
CREATE TABLE carplaces_24 PARTITION OF carplaces FOR VALUES IN (24);
CREATE TABLE carplaces_25 PARTITION OF carplaces FOR VALUES IN (25);
CREATE TABLE carplaces_26 PARTITION OF carplaces FOR VALUES IN (26);
CREATE TABLE carplaces_27 PARTITION OF carplaces FOR VALUES IN (27);
CREATE TABLE carplaces_28 PARTITION OF carplaces FOR VALUES IN (28);
CREATE TABLE carplaces_29 PARTITION OF carplaces FOR VALUES IN (29);
CREATE TABLE carplaces_30 PARTITION OF carplaces FOR VALUES IN (30);
CREATE TABLE carplaces_31 PARTITION OF carplaces FOR VALUES IN (31);
CREATE TABLE carplaces_32 PARTITION OF carplaces FOR VALUES IN (32);
CREATE TABLE carplaces_33 PARTITION OF carplaces FOR VALUES IN (33);
CREATE TABLE carplaces_34 PARTITION OF carplaces FOR VALUES IN (34);
CREATE TABLE carplaces_35 PARTITION OF carplaces FOR VALUES IN (35);
CREATE TABLE carplaces_36 PARTITION OF carplaces FOR VALUES IN (36);
CREATE TABLE carplaces_37 PARTITION OF carplaces FOR VALUES IN (37);
CREATE TABLE carplaces_38 PARTITION OF carplaces FOR VALUES IN (38);
CREATE TABLE carplaces_39 PARTITION OF carplaces FOR VALUES IN (39);
CREATE TABLE carplaces_40 PARTITION OF carplaces FOR VALUES IN (40);
CREATE TABLE carplaces_41 PARTITION OF carplaces FOR VALUES IN (41);
CREATE TABLE carplaces_42 PARTITION OF carplaces FOR VALUES IN (42);
CREATE TABLE carplaces_43 PARTITION OF carplaces FOR VALUES IN (43);
CREATE TABLE carplaces_44 PARTITION OF carplaces FOR VALUES IN (44);
CREATE TABLE carplaces_45 PARTITION OF carplaces FOR VALUES IN (45);
CREATE TABLE carplaces_46 PARTITION OF carplaces FOR VALUES IN (46);
CREATE TABLE carplaces_47 PARTITION OF carplaces FOR VALUES IN (47);
CREATE TABLE carplaces_48 PARTITION OF carplaces FOR VALUES IN (48);
CREATE TABLE carplaces_49 PARTITION OF carplaces FOR VALUES IN (49);
CREATE TABLE carplaces_50 PARTITION OF carplaces FOR VALUES IN (50);
CREATE TABLE carplaces_51 PARTITION OF carplaces FOR VALUES IN (51);
CREATE TABLE carplaces_52 PARTITION OF carplaces FOR VALUES IN (52);
CREATE TABLE carplaces_53 PARTITION OF carplaces FOR VALUES IN (53);
CREATE TABLE carplaces_54 PARTITION OF carplaces FOR VALUES IN (54);
CREATE TABLE carplaces_55 PARTITION OF carplaces FOR VALUES IN (55);
CREATE TABLE carplaces_56 PARTITION OF carplaces FOR VALUES IN (56);
CREATE TABLE carplaces_57 PARTITION OF carplaces FOR VALUES IN (57);
CREATE TABLE carplaces_58 PARTITION OF carplaces FOR VALUES IN (58);
CREATE TABLE carplaces_59 PARTITION OF carplaces FOR VALUES IN (59);
CREATE TABLE carplaces_60 PARTITION OF carplaces FOR VALUES IN (60);
CREATE TABLE carplaces_61 PARTITION OF carplaces FOR VALUES IN (61);
CREATE TABLE carplaces_62 PARTITION OF carplaces FOR VALUES IN (62);
CREATE TABLE carplaces_63 PARTITION OF carplaces FOR VALUES IN (63);
CREATE TABLE carplaces_64 PARTITION OF carplaces FOR VALUES IN (64);
CREATE TABLE carplaces_65 PARTITION OF carplaces FOR VALUES IN (65);
CREATE TABLE carplaces_66 PARTITION OF carplaces FOR VALUES IN (66);
CREATE TABLE carplaces_67 PARTITION OF carplaces FOR VALUES IN (67);
CREATE TABLE carplaces_68 PARTITION OF carplaces FOR VALUES IN (68);
CREATE TABLE carplaces_69 PARTITION OF carplaces FOR VALUES IN (69);
CREATE TABLE carplaces_70 PARTITION OF carplaces FOR VALUES IN (70);
CREATE TABLE carplaces_71 PARTITION OF carplaces FOR VALUES IN (71);
CREATE TABLE carplaces_72 PARTITION OF carplaces FOR VALUES IN (72);
CREATE TABLE carplaces_73 PARTITION OF carplaces FOR VALUES IN (73);
CREATE TABLE carplaces_74 PARTITION OF carplaces FOR VALUES IN (74);
CREATE TABLE carplaces_75 PARTITION OF carplaces FOR VALUES IN (75);
CREATE TABLE carplaces_76 PARTITION OF carplaces FOR VALUES IN (76);
CREATE TABLE carplaces_77 PARTITION OF carplaces FOR VALUES IN (77);
CREATE TABLE carplaces_78 PARTITION OF carplaces FOR VALUES IN (78);
CREATE TABLE carplaces_79 PARTITION OF carplaces FOR VALUES IN (79);
CREATE TABLE carplaces_80 PARTITION OF carplaces FOR VALUES IN (80);
CREATE TABLE carplaces_81 PARTITION OF carplaces FOR VALUES IN (81);
CREATE TABLE carplaces_82 PARTITION OF carplaces FOR VALUES IN (82);
CREATE TABLE carplaces_83 PARTITION OF carplaces FOR VALUES IN (83);
CREATE TABLE carplaces_84 PARTITION OF carplaces FOR VALUES IN (84);
CREATE TABLE carplaces_85 PARTITION OF carplaces FOR VALUES IN (85);
CREATE TABLE carplaces_86 PARTITION OF carplaces FOR VALUES IN (86);
CREATE TABLE carplaces_87 PARTITION OF carplaces FOR VALUES IN (87);
CREATE TABLE carplaces_88 PARTITION OF carplaces FOR VALUES IN (88);
CREATE TABLE carplaces_89 PARTITION OF carplaces FOR VALUES IN (89);
CREATE TABLE carplaces_90 PARTITION OF carplaces FOR VALUES IN (90);
CREATE TABLE carplaces_91 PARTITION OF carplaces FOR VALUES IN (91);
CREATE TABLE carplaces_92 PARTITION OF carplaces FOR VALUES IN (92);
CREATE TABLE carplaces_93 PARTITION OF carplaces FOR VALUES IN (93);
CREATE TABLE carplaces_94 PARTITION OF carplaces FOR VALUES IN (94);
CREATE TABLE carplaces_95 PARTITION OF carplaces FOR VALUES IN (95);
CREATE TABLE carplaces_96 PARTITION OF carplaces FOR VALUES IN (96);
CREATE TABLE carplaces_97 PARTITION OF carplaces FOR VALUES IN (97);
CREATE TABLE carplaces_98 PARTITION OF carplaces FOR VALUES IN (98);
CREATE TABLE carplaces_99 PARTITION OF carplaces FOR VALUES IN (99);
