CREATE TABLE addr_obj (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  name VARCHAR(250) NOT NULL,
  typename VARCHAR(50) NOT NULL,
  level VARCHAR(10) NOT NULL,
  opertypeid INT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE addr_obj IS 'Сведения классификатора адресообразующих элементов';
COMMENT ON COLUMN addr_obj.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN addr_obj.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN addr_obj.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN addr_obj.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN addr_obj.name IS 'Наименование';
COMMENT ON COLUMN addr_obj.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN addr_obj.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN addr_obj.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN addr_obj.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN addr_obj.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN addr_obj.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN addr_obj.startdate IS 'Начало действия записи';
COMMENT ON COLUMN addr_obj.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN addr_obj.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN addr_obj.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE addr_obj_01 PARTITION OF addr_obj FOR VALUES IN (01);
CREATE TABLE addr_obj_02 PARTITION OF addr_obj FOR VALUES IN (02);
CREATE TABLE addr_obj_03 PARTITION OF addr_obj FOR VALUES IN (03);
CREATE TABLE addr_obj_04 PARTITION OF addr_obj FOR VALUES IN (04);
CREATE TABLE addr_obj_05 PARTITION OF addr_obj FOR VALUES IN (05);
CREATE TABLE addr_obj_06 PARTITION OF addr_obj FOR VALUES IN (06);
CREATE TABLE addr_obj_07 PARTITION OF addr_obj FOR VALUES IN (07);
CREATE TABLE addr_obj_08 PARTITION OF addr_obj FOR VALUES IN (08);
CREATE TABLE addr_obj_09 PARTITION OF addr_obj FOR VALUES IN (09);
CREATE TABLE addr_obj_10 PARTITION OF addr_obj FOR VALUES IN (10);
CREATE TABLE addr_obj_11 PARTITION OF addr_obj FOR VALUES IN (11);
CREATE TABLE addr_obj_12 PARTITION OF addr_obj FOR VALUES IN (12);
CREATE TABLE addr_obj_13 PARTITION OF addr_obj FOR VALUES IN (13);
CREATE TABLE addr_obj_14 PARTITION OF addr_obj FOR VALUES IN (14);
CREATE TABLE addr_obj_15 PARTITION OF addr_obj FOR VALUES IN (15);
CREATE TABLE addr_obj_16 PARTITION OF addr_obj FOR VALUES IN (16);
CREATE TABLE addr_obj_17 PARTITION OF addr_obj FOR VALUES IN (17);
CREATE TABLE addr_obj_18 PARTITION OF addr_obj FOR VALUES IN (18);
CREATE TABLE addr_obj_19 PARTITION OF addr_obj FOR VALUES IN (19);
CREATE TABLE addr_obj_20 PARTITION OF addr_obj FOR VALUES IN (20);
CREATE TABLE addr_obj_21 PARTITION OF addr_obj FOR VALUES IN (21);
CREATE TABLE addr_obj_22 PARTITION OF addr_obj FOR VALUES IN (22);
CREATE TABLE addr_obj_23 PARTITION OF addr_obj FOR VALUES IN (23);
CREATE TABLE addr_obj_24 PARTITION OF addr_obj FOR VALUES IN (24);
CREATE TABLE addr_obj_25 PARTITION OF addr_obj FOR VALUES IN (25);
CREATE TABLE addr_obj_26 PARTITION OF addr_obj FOR VALUES IN (26);
CREATE TABLE addr_obj_27 PARTITION OF addr_obj FOR VALUES IN (27);
CREATE TABLE addr_obj_28 PARTITION OF addr_obj FOR VALUES IN (28);
CREATE TABLE addr_obj_29 PARTITION OF addr_obj FOR VALUES IN (29);
CREATE TABLE addr_obj_30 PARTITION OF addr_obj FOR VALUES IN (30);
CREATE TABLE addr_obj_31 PARTITION OF addr_obj FOR VALUES IN (31);
CREATE TABLE addr_obj_32 PARTITION OF addr_obj FOR VALUES IN (32);
CREATE TABLE addr_obj_33 PARTITION OF addr_obj FOR VALUES IN (33);
CREATE TABLE addr_obj_34 PARTITION OF addr_obj FOR VALUES IN (34);
CREATE TABLE addr_obj_35 PARTITION OF addr_obj FOR VALUES IN (35);
CREATE TABLE addr_obj_36 PARTITION OF addr_obj FOR VALUES IN (36);
CREATE TABLE addr_obj_37 PARTITION OF addr_obj FOR VALUES IN (37);
CREATE TABLE addr_obj_38 PARTITION OF addr_obj FOR VALUES IN (38);
CREATE TABLE addr_obj_39 PARTITION OF addr_obj FOR VALUES IN (39);
CREATE TABLE addr_obj_40 PARTITION OF addr_obj FOR VALUES IN (40);
CREATE TABLE addr_obj_41 PARTITION OF addr_obj FOR VALUES IN (41);
CREATE TABLE addr_obj_42 PARTITION OF addr_obj FOR VALUES IN (42);
CREATE TABLE addr_obj_43 PARTITION OF addr_obj FOR VALUES IN (43);
CREATE TABLE addr_obj_44 PARTITION OF addr_obj FOR VALUES IN (44);
CREATE TABLE addr_obj_45 PARTITION OF addr_obj FOR VALUES IN (45);
CREATE TABLE addr_obj_46 PARTITION OF addr_obj FOR VALUES IN (46);
CREATE TABLE addr_obj_47 PARTITION OF addr_obj FOR VALUES IN (47);
CREATE TABLE addr_obj_48 PARTITION OF addr_obj FOR VALUES IN (48);
CREATE TABLE addr_obj_49 PARTITION OF addr_obj FOR VALUES IN (49);
CREATE TABLE addr_obj_50 PARTITION OF addr_obj FOR VALUES IN (50);
CREATE TABLE addr_obj_51 PARTITION OF addr_obj FOR VALUES IN (51);
CREATE TABLE addr_obj_52 PARTITION OF addr_obj FOR VALUES IN (52);
CREATE TABLE addr_obj_53 PARTITION OF addr_obj FOR VALUES IN (53);
CREATE TABLE addr_obj_54 PARTITION OF addr_obj FOR VALUES IN (54);
CREATE TABLE addr_obj_55 PARTITION OF addr_obj FOR VALUES IN (55);
CREATE TABLE addr_obj_56 PARTITION OF addr_obj FOR VALUES IN (56);
CREATE TABLE addr_obj_57 PARTITION OF addr_obj FOR VALUES IN (57);
CREATE TABLE addr_obj_58 PARTITION OF addr_obj FOR VALUES IN (58);
CREATE TABLE addr_obj_59 PARTITION OF addr_obj FOR VALUES IN (59);
CREATE TABLE addr_obj_60 PARTITION OF addr_obj FOR VALUES IN (60);
CREATE TABLE addr_obj_61 PARTITION OF addr_obj FOR VALUES IN (61);
CREATE TABLE addr_obj_62 PARTITION OF addr_obj FOR VALUES IN (62);
CREATE TABLE addr_obj_63 PARTITION OF addr_obj FOR VALUES IN (63);
CREATE TABLE addr_obj_64 PARTITION OF addr_obj FOR VALUES IN (64);
CREATE TABLE addr_obj_65 PARTITION OF addr_obj FOR VALUES IN (65);
CREATE TABLE addr_obj_66 PARTITION OF addr_obj FOR VALUES IN (66);
CREATE TABLE addr_obj_67 PARTITION OF addr_obj FOR VALUES IN (67);
CREATE TABLE addr_obj_68 PARTITION OF addr_obj FOR VALUES IN (68);
CREATE TABLE addr_obj_69 PARTITION OF addr_obj FOR VALUES IN (69);
CREATE TABLE addr_obj_70 PARTITION OF addr_obj FOR VALUES IN (70);
CREATE TABLE addr_obj_71 PARTITION OF addr_obj FOR VALUES IN (71);
CREATE TABLE addr_obj_72 PARTITION OF addr_obj FOR VALUES IN (72);
CREATE TABLE addr_obj_73 PARTITION OF addr_obj FOR VALUES IN (73);
CREATE TABLE addr_obj_74 PARTITION OF addr_obj FOR VALUES IN (74);
CREATE TABLE addr_obj_75 PARTITION OF addr_obj FOR VALUES IN (75);
CREATE TABLE addr_obj_76 PARTITION OF addr_obj FOR VALUES IN (76);
CREATE TABLE addr_obj_77 PARTITION OF addr_obj FOR VALUES IN (77);
CREATE TABLE addr_obj_78 PARTITION OF addr_obj FOR VALUES IN (78);
CREATE TABLE addr_obj_79 PARTITION OF addr_obj FOR VALUES IN (79);
CREATE TABLE addr_obj_80 PARTITION OF addr_obj FOR VALUES IN (80);
CREATE TABLE addr_obj_81 PARTITION OF addr_obj FOR VALUES IN (81);
CREATE TABLE addr_obj_82 PARTITION OF addr_obj FOR VALUES IN (82);
CREATE TABLE addr_obj_83 PARTITION OF addr_obj FOR VALUES IN (83);
CREATE TABLE addr_obj_84 PARTITION OF addr_obj FOR VALUES IN (84);
CREATE TABLE addr_obj_85 PARTITION OF addr_obj FOR VALUES IN (85);
CREATE TABLE addr_obj_86 PARTITION OF addr_obj FOR VALUES IN (86);
CREATE TABLE addr_obj_87 PARTITION OF addr_obj FOR VALUES IN (87);
CREATE TABLE addr_obj_88 PARTITION OF addr_obj FOR VALUES IN (88);
CREATE TABLE addr_obj_89 PARTITION OF addr_obj FOR VALUES IN (89);
CREATE TABLE addr_obj_90 PARTITION OF addr_obj FOR VALUES IN (90);
CREATE TABLE addr_obj_91 PARTITION OF addr_obj FOR VALUES IN (91);
CREATE TABLE addr_obj_92 PARTITION OF addr_obj FOR VALUES IN (92);
CREATE TABLE addr_obj_93 PARTITION OF addr_obj FOR VALUES IN (93);
CREATE TABLE addr_obj_94 PARTITION OF addr_obj FOR VALUES IN (94);
CREATE TABLE addr_obj_95 PARTITION OF addr_obj FOR VALUES IN (95);
CREATE TABLE addr_obj_96 PARTITION OF addr_obj FOR VALUES IN (96);
CREATE TABLE addr_obj_97 PARTITION OF addr_obj FOR VALUES IN (97);
CREATE TABLE addr_obj_98 PARTITION OF addr_obj FOR VALUES IN (98);
CREATE TABLE addr_obj_99 PARTITION OF addr_obj FOR VALUES IN (99);
