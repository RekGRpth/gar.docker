CREATE TABLE reestr_objects (
  objectid BIGINT NOT NULL PRIMARY KEY,
  createdate DATE NOT NULL,
  changeid BIGINT NOT NULL,
  levelid INT NOT NULL,
  updatedate DATE NOT NULL,
  objectguid UUID NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir));
COMMENT ON TABLE reestr_objects IS 'Сведения об адресном элементе в части его идентификаторов';
COMMENT ON COLUMN reestr_objects.objectid IS 'Уникальный идентификатор объекта';
COMMENT ON COLUMN reestr_objects.createdate IS 'Дата создания';
COMMENT ON COLUMN reestr_objects.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN reestr_objects.levelid IS 'Уровень объекта';
COMMENT ON COLUMN reestr_objects.updatedate IS 'Дата обновления';
COMMENT ON COLUMN reestr_objects.objectguid IS 'GUID объекта';
COMMENT ON COLUMN reestr_objects.isactive IS 'Признак действующего объекта (1 - действующий, 0 - не действующий)';

CREATE TABLE reestr_objects_01 PARTITION OF reestr_objects FOR VALUES IN (01);
CREATE TABLE reestr_objects_02 PARTITION OF reestr_objects FOR VALUES IN (02);
CREATE TABLE reestr_objects_03 PARTITION OF reestr_objects FOR VALUES IN (03);
CREATE TABLE reestr_objects_04 PARTITION OF reestr_objects FOR VALUES IN (04);
CREATE TABLE reestr_objects_05 PARTITION OF reestr_objects FOR VALUES IN (05);
CREATE TABLE reestr_objects_06 PARTITION OF reestr_objects FOR VALUES IN (06);
CREATE TABLE reestr_objects_07 PARTITION OF reestr_objects FOR VALUES IN (07);
CREATE TABLE reestr_objects_08 PARTITION OF reestr_objects FOR VALUES IN (08);
CREATE TABLE reestr_objects_09 PARTITION OF reestr_objects FOR VALUES IN (09);
CREATE TABLE reestr_objects_10 PARTITION OF reestr_objects FOR VALUES IN (10);
CREATE TABLE reestr_objects_11 PARTITION OF reestr_objects FOR VALUES IN (11);
CREATE TABLE reestr_objects_12 PARTITION OF reestr_objects FOR VALUES IN (12);
CREATE TABLE reestr_objects_13 PARTITION OF reestr_objects FOR VALUES IN (13);
CREATE TABLE reestr_objects_14 PARTITION OF reestr_objects FOR VALUES IN (14);
CREATE TABLE reestr_objects_15 PARTITION OF reestr_objects FOR VALUES IN (15);
CREATE TABLE reestr_objects_16 PARTITION OF reestr_objects FOR VALUES IN (16);
CREATE TABLE reestr_objects_17 PARTITION OF reestr_objects FOR VALUES IN (17);
CREATE TABLE reestr_objects_18 PARTITION OF reestr_objects FOR VALUES IN (18);
CREATE TABLE reestr_objects_19 PARTITION OF reestr_objects FOR VALUES IN (19);
CREATE TABLE reestr_objects_20 PARTITION OF reestr_objects FOR VALUES IN (20);
CREATE TABLE reestr_objects_21 PARTITION OF reestr_objects FOR VALUES IN (21);
CREATE TABLE reestr_objects_22 PARTITION OF reestr_objects FOR VALUES IN (22);
CREATE TABLE reestr_objects_23 PARTITION OF reestr_objects FOR VALUES IN (23);
CREATE TABLE reestr_objects_24 PARTITION OF reestr_objects FOR VALUES IN (24);
CREATE TABLE reestr_objects_25 PARTITION OF reestr_objects FOR VALUES IN (25);
CREATE TABLE reestr_objects_26 PARTITION OF reestr_objects FOR VALUES IN (26);
CREATE TABLE reestr_objects_27 PARTITION OF reestr_objects FOR VALUES IN (27);
CREATE TABLE reestr_objects_28 PARTITION OF reestr_objects FOR VALUES IN (28);
CREATE TABLE reestr_objects_29 PARTITION OF reestr_objects FOR VALUES IN (29);
CREATE TABLE reestr_objects_30 PARTITION OF reestr_objects FOR VALUES IN (30);
CREATE TABLE reestr_objects_31 PARTITION OF reestr_objects FOR VALUES IN (31);
CREATE TABLE reestr_objects_32 PARTITION OF reestr_objects FOR VALUES IN (32);
CREATE TABLE reestr_objects_33 PARTITION OF reestr_objects FOR VALUES IN (33);
CREATE TABLE reestr_objects_34 PARTITION OF reestr_objects FOR VALUES IN (34);
CREATE TABLE reestr_objects_35 PARTITION OF reestr_objects FOR VALUES IN (35);
CREATE TABLE reestr_objects_36 PARTITION OF reestr_objects FOR VALUES IN (36);
CREATE TABLE reestr_objects_37 PARTITION OF reestr_objects FOR VALUES IN (37);
CREATE TABLE reestr_objects_38 PARTITION OF reestr_objects FOR VALUES IN (38);
CREATE TABLE reestr_objects_39 PARTITION OF reestr_objects FOR VALUES IN (39);
CREATE TABLE reestr_objects_40 PARTITION OF reestr_objects FOR VALUES IN (40);
CREATE TABLE reestr_objects_41 PARTITION OF reestr_objects FOR VALUES IN (41);
CREATE TABLE reestr_objects_42 PARTITION OF reestr_objects FOR VALUES IN (42);
CREATE TABLE reestr_objects_43 PARTITION OF reestr_objects FOR VALUES IN (43);
CREATE TABLE reestr_objects_44 PARTITION OF reestr_objects FOR VALUES IN (44);
CREATE TABLE reestr_objects_45 PARTITION OF reestr_objects FOR VALUES IN (45);
CREATE TABLE reestr_objects_46 PARTITION OF reestr_objects FOR VALUES IN (46);
CREATE TABLE reestr_objects_47 PARTITION OF reestr_objects FOR VALUES IN (47);
CREATE TABLE reestr_objects_48 PARTITION OF reestr_objects FOR VALUES IN (48);
CREATE TABLE reestr_objects_49 PARTITION OF reestr_objects FOR VALUES IN (49);
CREATE TABLE reestr_objects_50 PARTITION OF reestr_objects FOR VALUES IN (50);
CREATE TABLE reestr_objects_51 PARTITION OF reestr_objects FOR VALUES IN (51);
CREATE TABLE reestr_objects_52 PARTITION OF reestr_objects FOR VALUES IN (52);
CREATE TABLE reestr_objects_53 PARTITION OF reestr_objects FOR VALUES IN (53);
CREATE TABLE reestr_objects_54 PARTITION OF reestr_objects FOR VALUES IN (54);
CREATE TABLE reestr_objects_55 PARTITION OF reestr_objects FOR VALUES IN (55);
CREATE TABLE reestr_objects_56 PARTITION OF reestr_objects FOR VALUES IN (56);
CREATE TABLE reestr_objects_57 PARTITION OF reestr_objects FOR VALUES IN (57);
CREATE TABLE reestr_objects_58 PARTITION OF reestr_objects FOR VALUES IN (58);
CREATE TABLE reestr_objects_59 PARTITION OF reestr_objects FOR VALUES IN (59);
CREATE TABLE reestr_objects_60 PARTITION OF reestr_objects FOR VALUES IN (60);
CREATE TABLE reestr_objects_61 PARTITION OF reestr_objects FOR VALUES IN (61);
CREATE TABLE reestr_objects_62 PARTITION OF reestr_objects FOR VALUES IN (62);
CREATE TABLE reestr_objects_63 PARTITION OF reestr_objects FOR VALUES IN (63);
CREATE TABLE reestr_objects_64 PARTITION OF reestr_objects FOR VALUES IN (64);
CREATE TABLE reestr_objects_65 PARTITION OF reestr_objects FOR VALUES IN (65);
CREATE TABLE reestr_objects_66 PARTITION OF reestr_objects FOR VALUES IN (66);
CREATE TABLE reestr_objects_67 PARTITION OF reestr_objects FOR VALUES IN (67);
CREATE TABLE reestr_objects_68 PARTITION OF reestr_objects FOR VALUES IN (68);
CREATE TABLE reestr_objects_69 PARTITION OF reestr_objects FOR VALUES IN (69);
CREATE TABLE reestr_objects_70 PARTITION OF reestr_objects FOR VALUES IN (70);
CREATE TABLE reestr_objects_71 PARTITION OF reestr_objects FOR VALUES IN (71);
CREATE TABLE reestr_objects_72 PARTITION OF reestr_objects FOR VALUES IN (72);
CREATE TABLE reestr_objects_73 PARTITION OF reestr_objects FOR VALUES IN (73);
CREATE TABLE reestr_objects_74 PARTITION OF reestr_objects FOR VALUES IN (74);
CREATE TABLE reestr_objects_75 PARTITION OF reestr_objects FOR VALUES IN (75);
CREATE TABLE reestr_objects_76 PARTITION OF reestr_objects FOR VALUES IN (76);
CREATE TABLE reestr_objects_77 PARTITION OF reestr_objects FOR VALUES IN (77);
CREATE TABLE reestr_objects_78 PARTITION OF reestr_objects FOR VALUES IN (78);
CREATE TABLE reestr_objects_79 PARTITION OF reestr_objects FOR VALUES IN (79);
CREATE TABLE reestr_objects_80 PARTITION OF reestr_objects FOR VALUES IN (80);
CREATE TABLE reestr_objects_81 PARTITION OF reestr_objects FOR VALUES IN (81);
CREATE TABLE reestr_objects_82 PARTITION OF reestr_objects FOR VALUES IN (82);
CREATE TABLE reestr_objects_83 PARTITION OF reestr_objects FOR VALUES IN (83);
CREATE TABLE reestr_objects_84 PARTITION OF reestr_objects FOR VALUES IN (84);
CREATE TABLE reestr_objects_85 PARTITION OF reestr_objects FOR VALUES IN (85);
CREATE TABLE reestr_objects_86 PARTITION OF reestr_objects FOR VALUES IN (86);
CREATE TABLE reestr_objects_87 PARTITION OF reestr_objects FOR VALUES IN (87);
CREATE TABLE reestr_objects_88 PARTITION OF reestr_objects FOR VALUES IN (88);
CREATE TABLE reestr_objects_89 PARTITION OF reestr_objects FOR VALUES IN (89);
CREATE TABLE reestr_objects_90 PARTITION OF reestr_objects FOR VALUES IN (90);
CREATE TABLE reestr_objects_91 PARTITION OF reestr_objects FOR VALUES IN (91);
CREATE TABLE reestr_objects_92 PARTITION OF reestr_objects FOR VALUES IN (92);
CREATE TABLE reestr_objects_93 PARTITION OF reestr_objects FOR VALUES IN (93);
CREATE TABLE reestr_objects_94 PARTITION OF reestr_objects FOR VALUES IN (94);
CREATE TABLE reestr_objects_95 PARTITION OF reestr_objects FOR VALUES IN (95);
CREATE TABLE reestr_objects_96 PARTITION OF reestr_objects FOR VALUES IN (96);
CREATE TABLE reestr_objects_97 PARTITION OF reestr_objects FOR VALUES IN (97);
CREATE TABLE reestr_objects_98 PARTITION OF reestr_objects FOR VALUES IN (98);
CREATE TABLE reestr_objects_99 PARTITION OF reestr_objects FOR VALUES IN (99);
