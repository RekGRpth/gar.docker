CREATE TABLE steads (
  id INT NOT NULL PRIMARY KEY,
  objectid INT NOT NULL,
  objectguid UUID NOT NULL,
  changeid INT NOT NULL,
  number VARCHAR(250) NOT NULL,
  opertypeid VARCHAR(2) NOT NULL,
  previd INT,
  nextid INT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE steads IS 'Сведения по земельным участкам';
COMMENT ON COLUMN steads.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN steads.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN steads.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN steads.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN steads.number IS 'Номер земельного участка';
COMMENT ON COLUMN steads.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN steads.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN steads.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN steads.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN steads.startdate IS 'Начало действия записи';
COMMENT ON COLUMN steads.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN steads.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN steads.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE steads_01 PARTITION OF steads FOR VALUES IN (01);
CREATE TABLE steads_02 PARTITION OF steads FOR VALUES IN (02);
CREATE TABLE steads_03 PARTITION OF steads FOR VALUES IN (03);
CREATE TABLE steads_04 PARTITION OF steads FOR VALUES IN (04);
CREATE TABLE steads_05 PARTITION OF steads FOR VALUES IN (05);
CREATE TABLE steads_06 PARTITION OF steads FOR VALUES IN (06);
CREATE TABLE steads_07 PARTITION OF steads FOR VALUES IN (07);
CREATE TABLE steads_08 PARTITION OF steads FOR VALUES IN (08);
CREATE TABLE steads_09 PARTITION OF steads FOR VALUES IN (09);
CREATE TABLE steads_10 PARTITION OF steads FOR VALUES IN (10);
CREATE TABLE steads_11 PARTITION OF steads FOR VALUES IN (11);
CREATE TABLE steads_12 PARTITION OF steads FOR VALUES IN (12);
CREATE TABLE steads_13 PARTITION OF steads FOR VALUES IN (13);
CREATE TABLE steads_14 PARTITION OF steads FOR VALUES IN (14);
CREATE TABLE steads_15 PARTITION OF steads FOR VALUES IN (15);
CREATE TABLE steads_16 PARTITION OF steads FOR VALUES IN (16);
CREATE TABLE steads_17 PARTITION OF steads FOR VALUES IN (17);
CREATE TABLE steads_18 PARTITION OF steads FOR VALUES IN (18);
CREATE TABLE steads_19 PARTITION OF steads FOR VALUES IN (19);
CREATE TABLE steads_20 PARTITION OF steads FOR VALUES IN (20);
CREATE TABLE steads_21 PARTITION OF steads FOR VALUES IN (21);
CREATE TABLE steads_22 PARTITION OF steads FOR VALUES IN (22);
CREATE TABLE steads_23 PARTITION OF steads FOR VALUES IN (23);
CREATE TABLE steads_24 PARTITION OF steads FOR VALUES IN (24);
CREATE TABLE steads_25 PARTITION OF steads FOR VALUES IN (25);
CREATE TABLE steads_26 PARTITION OF steads FOR VALUES IN (26);
CREATE TABLE steads_27 PARTITION OF steads FOR VALUES IN (27);
CREATE TABLE steads_28 PARTITION OF steads FOR VALUES IN (28);
CREATE TABLE steads_29 PARTITION OF steads FOR VALUES IN (29);
CREATE TABLE steads_30 PARTITION OF steads FOR VALUES IN (30);
CREATE TABLE steads_31 PARTITION OF steads FOR VALUES IN (31);
CREATE TABLE steads_32 PARTITION OF steads FOR VALUES IN (32);
CREATE TABLE steads_33 PARTITION OF steads FOR VALUES IN (33);
CREATE TABLE steads_34 PARTITION OF steads FOR VALUES IN (34);
CREATE TABLE steads_35 PARTITION OF steads FOR VALUES IN (35);
CREATE TABLE steads_36 PARTITION OF steads FOR VALUES IN (36);
CREATE TABLE steads_37 PARTITION OF steads FOR VALUES IN (37);
CREATE TABLE steads_38 PARTITION OF steads FOR VALUES IN (38);
CREATE TABLE steads_39 PARTITION OF steads FOR VALUES IN (39);
CREATE TABLE steads_40 PARTITION OF steads FOR VALUES IN (40);
CREATE TABLE steads_41 PARTITION OF steads FOR VALUES IN (41);
CREATE TABLE steads_42 PARTITION OF steads FOR VALUES IN (42);
CREATE TABLE steads_43 PARTITION OF steads FOR VALUES IN (43);
CREATE TABLE steads_44 PARTITION OF steads FOR VALUES IN (44);
CREATE TABLE steads_45 PARTITION OF steads FOR VALUES IN (45);
CREATE TABLE steads_46 PARTITION OF steads FOR VALUES IN (46);
CREATE TABLE steads_47 PARTITION OF steads FOR VALUES IN (47);
CREATE TABLE steads_48 PARTITION OF steads FOR VALUES IN (48);
CREATE TABLE steads_49 PARTITION OF steads FOR VALUES IN (49);
CREATE TABLE steads_50 PARTITION OF steads FOR VALUES IN (50);
CREATE TABLE steads_51 PARTITION OF steads FOR VALUES IN (51);
CREATE TABLE steads_52 PARTITION OF steads FOR VALUES IN (52);
CREATE TABLE steads_53 PARTITION OF steads FOR VALUES IN (53);
CREATE TABLE steads_54 PARTITION OF steads FOR VALUES IN (54);
CREATE TABLE steads_55 PARTITION OF steads FOR VALUES IN (55);
CREATE TABLE steads_56 PARTITION OF steads FOR VALUES IN (56);
CREATE TABLE steads_57 PARTITION OF steads FOR VALUES IN (57);
CREATE TABLE steads_58 PARTITION OF steads FOR VALUES IN (58);
CREATE TABLE steads_59 PARTITION OF steads FOR VALUES IN (59);
CREATE TABLE steads_60 PARTITION OF steads FOR VALUES IN (60);
CREATE TABLE steads_61 PARTITION OF steads FOR VALUES IN (61);
CREATE TABLE steads_62 PARTITION OF steads FOR VALUES IN (62);
CREATE TABLE steads_63 PARTITION OF steads FOR VALUES IN (63);
CREATE TABLE steads_64 PARTITION OF steads FOR VALUES IN (64);
CREATE TABLE steads_65 PARTITION OF steads FOR VALUES IN (65);
CREATE TABLE steads_66 PARTITION OF steads FOR VALUES IN (66);
CREATE TABLE steads_67 PARTITION OF steads FOR VALUES IN (67);
CREATE TABLE steads_68 PARTITION OF steads FOR VALUES IN (68);
CREATE TABLE steads_69 PARTITION OF steads FOR VALUES IN (69);
CREATE TABLE steads_70 PARTITION OF steads FOR VALUES IN (70);
CREATE TABLE steads_71 PARTITION OF steads FOR VALUES IN (71);
CREATE TABLE steads_72 PARTITION OF steads FOR VALUES IN (72);
CREATE TABLE steads_73 PARTITION OF steads FOR VALUES IN (73);
CREATE TABLE steads_74 PARTITION OF steads FOR VALUES IN (74);
CREATE TABLE steads_75 PARTITION OF steads FOR VALUES IN (75);
CREATE TABLE steads_76 PARTITION OF steads FOR VALUES IN (76);
CREATE TABLE steads_77 PARTITION OF steads FOR VALUES IN (77);
CREATE TABLE steads_78 PARTITION OF steads FOR VALUES IN (78);
CREATE TABLE steads_79 PARTITION OF steads FOR VALUES IN (79);
CREATE TABLE steads_80 PARTITION OF steads FOR VALUES IN (80);
CREATE TABLE steads_81 PARTITION OF steads FOR VALUES IN (81);
CREATE TABLE steads_82 PARTITION OF steads FOR VALUES IN (82);
CREATE TABLE steads_83 PARTITION OF steads FOR VALUES IN (83);
CREATE TABLE steads_84 PARTITION OF steads FOR VALUES IN (84);
CREATE TABLE steads_85 PARTITION OF steads FOR VALUES IN (85);
CREATE TABLE steads_86 PARTITION OF steads FOR VALUES IN (86);
CREATE TABLE steads_87 PARTITION OF steads FOR VALUES IN (87);
CREATE TABLE steads_88 PARTITION OF steads FOR VALUES IN (88);
CREATE TABLE steads_89 PARTITION OF steads FOR VALUES IN (89);
CREATE TABLE steads_90 PARTITION OF steads FOR VALUES IN (90);
CREATE TABLE steads_91 PARTITION OF steads FOR VALUES IN (91);
CREATE TABLE steads_92 PARTITION OF steads FOR VALUES IN (92);
CREATE TABLE steads_93 PARTITION OF steads FOR VALUES IN (93);
CREATE TABLE steads_94 PARTITION OF steads FOR VALUES IN (94);
CREATE TABLE steads_95 PARTITION OF steads FOR VALUES IN (95);
CREATE TABLE steads_96 PARTITION OF steads FOR VALUES IN (96);
CREATE TABLE steads_97 PARTITION OF steads FOR VALUES IN (97);
CREATE TABLE steads_98 PARTITION OF steads FOR VALUES IN (98);
CREATE TABLE steads_99 PARTITION OF steads FOR VALUES IN (99);
