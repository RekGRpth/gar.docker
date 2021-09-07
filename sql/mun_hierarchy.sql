CREATE TABLE mun_hierarchy (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  parentobjid BIGINT,
  changeid BIGINT NOT NULL,
  oktmo VARCHAR(11),
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE mun_hierarchy IS 'Сведения по иерархии в муниципальном делении';
COMMENT ON COLUMN mun_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN mun_hierarchy.objectid IS 'Глобальный уникальный идентификатор адресного объекта ';
COMMENT ON COLUMN mun_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN mun_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN mun_hierarchy.oktmo IS 'Код ОКТМО';
COMMENT ON COLUMN mun_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN mun_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN mun_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN mun_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN mun_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN mun_hierarchy.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE mun_hierarchy_01 PARTITION OF mun_hierarchy FOR VALUES IN (01);
CREATE TABLE mun_hierarchy_02 PARTITION OF mun_hierarchy FOR VALUES IN (02);
CREATE TABLE mun_hierarchy_03 PARTITION OF mun_hierarchy FOR VALUES IN (03);
CREATE TABLE mun_hierarchy_04 PARTITION OF mun_hierarchy FOR VALUES IN (04);
CREATE TABLE mun_hierarchy_05 PARTITION OF mun_hierarchy FOR VALUES IN (05);
CREATE TABLE mun_hierarchy_06 PARTITION OF mun_hierarchy FOR VALUES IN (06);
CREATE TABLE mun_hierarchy_07 PARTITION OF mun_hierarchy FOR VALUES IN (07);
CREATE TABLE mun_hierarchy_08 PARTITION OF mun_hierarchy FOR VALUES IN (08);
CREATE TABLE mun_hierarchy_09 PARTITION OF mun_hierarchy FOR VALUES IN (09);
CREATE TABLE mun_hierarchy_10 PARTITION OF mun_hierarchy FOR VALUES IN (10);
CREATE TABLE mun_hierarchy_11 PARTITION OF mun_hierarchy FOR VALUES IN (11);
CREATE TABLE mun_hierarchy_12 PARTITION OF mun_hierarchy FOR VALUES IN (12);
CREATE TABLE mun_hierarchy_13 PARTITION OF mun_hierarchy FOR VALUES IN (13);
CREATE TABLE mun_hierarchy_14 PARTITION OF mun_hierarchy FOR VALUES IN (14);
CREATE TABLE mun_hierarchy_15 PARTITION OF mun_hierarchy FOR VALUES IN (15);
CREATE TABLE mun_hierarchy_16 PARTITION OF mun_hierarchy FOR VALUES IN (16);
CREATE TABLE mun_hierarchy_17 PARTITION OF mun_hierarchy FOR VALUES IN (17);
CREATE TABLE mun_hierarchy_18 PARTITION OF mun_hierarchy FOR VALUES IN (18);
CREATE TABLE mun_hierarchy_19 PARTITION OF mun_hierarchy FOR VALUES IN (19);
CREATE TABLE mun_hierarchy_20 PARTITION OF mun_hierarchy FOR VALUES IN (20);
CREATE TABLE mun_hierarchy_21 PARTITION OF mun_hierarchy FOR VALUES IN (21);
CREATE TABLE mun_hierarchy_22 PARTITION OF mun_hierarchy FOR VALUES IN (22);
CREATE TABLE mun_hierarchy_23 PARTITION OF mun_hierarchy FOR VALUES IN (23);
CREATE TABLE mun_hierarchy_24 PARTITION OF mun_hierarchy FOR VALUES IN (24);
CREATE TABLE mun_hierarchy_25 PARTITION OF mun_hierarchy FOR VALUES IN (25);
CREATE TABLE mun_hierarchy_26 PARTITION OF mun_hierarchy FOR VALUES IN (26);
CREATE TABLE mun_hierarchy_27 PARTITION OF mun_hierarchy FOR VALUES IN (27);
CREATE TABLE mun_hierarchy_28 PARTITION OF mun_hierarchy FOR VALUES IN (28);
CREATE TABLE mun_hierarchy_29 PARTITION OF mun_hierarchy FOR VALUES IN (29);
CREATE TABLE mun_hierarchy_30 PARTITION OF mun_hierarchy FOR VALUES IN (30);
CREATE TABLE mun_hierarchy_31 PARTITION OF mun_hierarchy FOR VALUES IN (31);
CREATE TABLE mun_hierarchy_32 PARTITION OF mun_hierarchy FOR VALUES IN (32);
CREATE TABLE mun_hierarchy_33 PARTITION OF mun_hierarchy FOR VALUES IN (33);
CREATE TABLE mun_hierarchy_34 PARTITION OF mun_hierarchy FOR VALUES IN (34);
CREATE TABLE mun_hierarchy_35 PARTITION OF mun_hierarchy FOR VALUES IN (35);
CREATE TABLE mun_hierarchy_36 PARTITION OF mun_hierarchy FOR VALUES IN (36);
CREATE TABLE mun_hierarchy_37 PARTITION OF mun_hierarchy FOR VALUES IN (37);
CREATE TABLE mun_hierarchy_38 PARTITION OF mun_hierarchy FOR VALUES IN (38);
CREATE TABLE mun_hierarchy_39 PARTITION OF mun_hierarchy FOR VALUES IN (39);
CREATE TABLE mun_hierarchy_40 PARTITION OF mun_hierarchy FOR VALUES IN (40);
CREATE TABLE mun_hierarchy_41 PARTITION OF mun_hierarchy FOR VALUES IN (41);
CREATE TABLE mun_hierarchy_42 PARTITION OF mun_hierarchy FOR VALUES IN (42);
CREATE TABLE mun_hierarchy_43 PARTITION OF mun_hierarchy FOR VALUES IN (43);
CREATE TABLE mun_hierarchy_44 PARTITION OF mun_hierarchy FOR VALUES IN (44);
CREATE TABLE mun_hierarchy_45 PARTITION OF mun_hierarchy FOR VALUES IN (45);
CREATE TABLE mun_hierarchy_46 PARTITION OF mun_hierarchy FOR VALUES IN (46);
CREATE TABLE mun_hierarchy_47 PARTITION OF mun_hierarchy FOR VALUES IN (47);
CREATE TABLE mun_hierarchy_48 PARTITION OF mun_hierarchy FOR VALUES IN (48);
CREATE TABLE mun_hierarchy_49 PARTITION OF mun_hierarchy FOR VALUES IN (49);
CREATE TABLE mun_hierarchy_50 PARTITION OF mun_hierarchy FOR VALUES IN (50);
CREATE TABLE mun_hierarchy_51 PARTITION OF mun_hierarchy FOR VALUES IN (51);
CREATE TABLE mun_hierarchy_52 PARTITION OF mun_hierarchy FOR VALUES IN (52);
CREATE TABLE mun_hierarchy_53 PARTITION OF mun_hierarchy FOR VALUES IN (53);
CREATE TABLE mun_hierarchy_54 PARTITION OF mun_hierarchy FOR VALUES IN (54);
CREATE TABLE mun_hierarchy_55 PARTITION OF mun_hierarchy FOR VALUES IN (55);
CREATE TABLE mun_hierarchy_56 PARTITION OF mun_hierarchy FOR VALUES IN (56);
CREATE TABLE mun_hierarchy_57 PARTITION OF mun_hierarchy FOR VALUES IN (57);
CREATE TABLE mun_hierarchy_58 PARTITION OF mun_hierarchy FOR VALUES IN (58);
CREATE TABLE mun_hierarchy_59 PARTITION OF mun_hierarchy FOR VALUES IN (59);
CREATE TABLE mun_hierarchy_60 PARTITION OF mun_hierarchy FOR VALUES IN (60);
CREATE TABLE mun_hierarchy_61 PARTITION OF mun_hierarchy FOR VALUES IN (61);
CREATE TABLE mun_hierarchy_62 PARTITION OF mun_hierarchy FOR VALUES IN (62);
CREATE TABLE mun_hierarchy_63 PARTITION OF mun_hierarchy FOR VALUES IN (63);
CREATE TABLE mun_hierarchy_64 PARTITION OF mun_hierarchy FOR VALUES IN (64);
CREATE TABLE mun_hierarchy_65 PARTITION OF mun_hierarchy FOR VALUES IN (65);
CREATE TABLE mun_hierarchy_66 PARTITION OF mun_hierarchy FOR VALUES IN (66);
CREATE TABLE mun_hierarchy_67 PARTITION OF mun_hierarchy FOR VALUES IN (67);
CREATE TABLE mun_hierarchy_68 PARTITION OF mun_hierarchy FOR VALUES IN (68);
CREATE TABLE mun_hierarchy_69 PARTITION OF mun_hierarchy FOR VALUES IN (69);
CREATE TABLE mun_hierarchy_70 PARTITION OF mun_hierarchy FOR VALUES IN (70);
CREATE TABLE mun_hierarchy_71 PARTITION OF mun_hierarchy FOR VALUES IN (71);
CREATE TABLE mun_hierarchy_72 PARTITION OF mun_hierarchy FOR VALUES IN (72);
CREATE TABLE mun_hierarchy_73 PARTITION OF mun_hierarchy FOR VALUES IN (73);
CREATE TABLE mun_hierarchy_74 PARTITION OF mun_hierarchy FOR VALUES IN (74);
CREATE TABLE mun_hierarchy_75 PARTITION OF mun_hierarchy FOR VALUES IN (75);
CREATE TABLE mun_hierarchy_76 PARTITION OF mun_hierarchy FOR VALUES IN (76);
CREATE TABLE mun_hierarchy_77 PARTITION OF mun_hierarchy FOR VALUES IN (77);
CREATE TABLE mun_hierarchy_78 PARTITION OF mun_hierarchy FOR VALUES IN (78);
CREATE TABLE mun_hierarchy_79 PARTITION OF mun_hierarchy FOR VALUES IN (79);
CREATE TABLE mun_hierarchy_80 PARTITION OF mun_hierarchy FOR VALUES IN (80);
CREATE TABLE mun_hierarchy_81 PARTITION OF mun_hierarchy FOR VALUES IN (81);
CREATE TABLE mun_hierarchy_82 PARTITION OF mun_hierarchy FOR VALUES IN (82);
CREATE TABLE mun_hierarchy_83 PARTITION OF mun_hierarchy FOR VALUES IN (83);
CREATE TABLE mun_hierarchy_84 PARTITION OF mun_hierarchy FOR VALUES IN (84);
CREATE TABLE mun_hierarchy_85 PARTITION OF mun_hierarchy FOR VALUES IN (85);
CREATE TABLE mun_hierarchy_86 PARTITION OF mun_hierarchy FOR VALUES IN (86);
CREATE TABLE mun_hierarchy_87 PARTITION OF mun_hierarchy FOR VALUES IN (87);
CREATE TABLE mun_hierarchy_88 PARTITION OF mun_hierarchy FOR VALUES IN (88);
CREATE TABLE mun_hierarchy_89 PARTITION OF mun_hierarchy FOR VALUES IN (89);
CREATE TABLE mun_hierarchy_90 PARTITION OF mun_hierarchy FOR VALUES IN (90);
CREATE TABLE mun_hierarchy_91 PARTITION OF mun_hierarchy FOR VALUES IN (91);
CREATE TABLE mun_hierarchy_92 PARTITION OF mun_hierarchy FOR VALUES IN (92);
CREATE TABLE mun_hierarchy_93 PARTITION OF mun_hierarchy FOR VALUES IN (93);
CREATE TABLE mun_hierarchy_94 PARTITION OF mun_hierarchy FOR VALUES IN (94);
CREATE TABLE mun_hierarchy_95 PARTITION OF mun_hierarchy FOR VALUES IN (95);
CREATE TABLE mun_hierarchy_96 PARTITION OF mun_hierarchy FOR VALUES IN (96);
CREATE TABLE mun_hierarchy_97 PARTITION OF mun_hierarchy FOR VALUES IN (97);
CREATE TABLE mun_hierarchy_98 PARTITION OF mun_hierarchy FOR VALUES IN (98);
CREATE TABLE mun_hierarchy_99 PARTITION OF mun_hierarchy FOR VALUES IN (99);
