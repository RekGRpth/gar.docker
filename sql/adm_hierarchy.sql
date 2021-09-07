CREATE TABLE adm_hierarchy (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  parentobjid BIGINT,
  changeid BIGINT NOT NULL,
  regioncode VARCHAR(4),
  areacode VARCHAR(4),
  citycode VARCHAR(4),
  placecode VARCHAR(4),
  plancode VARCHAR(4),
  streetcode VARCHAR(4),
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE adm_hierarchy IS 'Сведения по иерархии в административном делении';
COMMENT ON COLUMN adm_hierarchy.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN adm_hierarchy.objectid IS 'Глобальный уникальный идентификатор объекта';
COMMENT ON COLUMN adm_hierarchy.parentobjid IS 'Идентификатор родительского объекта';
COMMENT ON COLUMN adm_hierarchy.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN adm_hierarchy.regioncode IS 'Код региона';
COMMENT ON COLUMN adm_hierarchy.areacode IS 'Код района';
COMMENT ON COLUMN adm_hierarchy.citycode IS 'Код города';
COMMENT ON COLUMN adm_hierarchy.placecode IS 'Код населенного пункта';
COMMENT ON COLUMN adm_hierarchy.plancode IS 'Код ЭПС';
COMMENT ON COLUMN adm_hierarchy.streetcode IS 'Код улицы';
COMMENT ON COLUMN adm_hierarchy.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN adm_hierarchy.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN adm_hierarchy.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN adm_hierarchy.startdate IS 'Начало действия записи';
COMMENT ON COLUMN adm_hierarchy.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN adm_hierarchy.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE adm_hierarchy_01 PARTITION OF adm_hierarchy FOR VALUES IN (01);
CREATE TABLE adm_hierarchy_02 PARTITION OF adm_hierarchy FOR VALUES IN (02);
CREATE TABLE adm_hierarchy_03 PARTITION OF adm_hierarchy FOR VALUES IN (03);
CREATE TABLE adm_hierarchy_04 PARTITION OF adm_hierarchy FOR VALUES IN (04);
CREATE TABLE adm_hierarchy_05 PARTITION OF adm_hierarchy FOR VALUES IN (05);
CREATE TABLE adm_hierarchy_06 PARTITION OF adm_hierarchy FOR VALUES IN (06);
CREATE TABLE adm_hierarchy_07 PARTITION OF adm_hierarchy FOR VALUES IN (07);
CREATE TABLE adm_hierarchy_08 PARTITION OF adm_hierarchy FOR VALUES IN (08);
CREATE TABLE adm_hierarchy_09 PARTITION OF adm_hierarchy FOR VALUES IN (09);
CREATE TABLE adm_hierarchy_10 PARTITION OF adm_hierarchy FOR VALUES IN (10);
CREATE TABLE adm_hierarchy_11 PARTITION OF adm_hierarchy FOR VALUES IN (11);
CREATE TABLE adm_hierarchy_12 PARTITION OF adm_hierarchy FOR VALUES IN (12);
CREATE TABLE adm_hierarchy_13 PARTITION OF adm_hierarchy FOR VALUES IN (13);
CREATE TABLE adm_hierarchy_14 PARTITION OF adm_hierarchy FOR VALUES IN (14);
CREATE TABLE adm_hierarchy_15 PARTITION OF adm_hierarchy FOR VALUES IN (15);
CREATE TABLE adm_hierarchy_16 PARTITION OF adm_hierarchy FOR VALUES IN (16);
CREATE TABLE adm_hierarchy_17 PARTITION OF adm_hierarchy FOR VALUES IN (17);
CREATE TABLE adm_hierarchy_18 PARTITION OF adm_hierarchy FOR VALUES IN (18);
CREATE TABLE adm_hierarchy_19 PARTITION OF adm_hierarchy FOR VALUES IN (19);
CREATE TABLE adm_hierarchy_20 PARTITION OF adm_hierarchy FOR VALUES IN (20);
CREATE TABLE adm_hierarchy_21 PARTITION OF adm_hierarchy FOR VALUES IN (21);
CREATE TABLE adm_hierarchy_22 PARTITION OF adm_hierarchy FOR VALUES IN (22);
CREATE TABLE adm_hierarchy_23 PARTITION OF adm_hierarchy FOR VALUES IN (23);
CREATE TABLE adm_hierarchy_24 PARTITION OF adm_hierarchy FOR VALUES IN (24);
CREATE TABLE adm_hierarchy_25 PARTITION OF adm_hierarchy FOR VALUES IN (25);
CREATE TABLE adm_hierarchy_26 PARTITION OF adm_hierarchy FOR VALUES IN (26);
CREATE TABLE adm_hierarchy_27 PARTITION OF adm_hierarchy FOR VALUES IN (27);
CREATE TABLE adm_hierarchy_28 PARTITION OF adm_hierarchy FOR VALUES IN (28);
CREATE TABLE adm_hierarchy_29 PARTITION OF adm_hierarchy FOR VALUES IN (29);
CREATE TABLE adm_hierarchy_30 PARTITION OF adm_hierarchy FOR VALUES IN (30);
CREATE TABLE adm_hierarchy_31 PARTITION OF adm_hierarchy FOR VALUES IN (31);
CREATE TABLE adm_hierarchy_32 PARTITION OF adm_hierarchy FOR VALUES IN (32);
CREATE TABLE adm_hierarchy_33 PARTITION OF adm_hierarchy FOR VALUES IN (33);
CREATE TABLE adm_hierarchy_34 PARTITION OF adm_hierarchy FOR VALUES IN (34);
CREATE TABLE adm_hierarchy_35 PARTITION OF adm_hierarchy FOR VALUES IN (35);
CREATE TABLE adm_hierarchy_36 PARTITION OF adm_hierarchy FOR VALUES IN (36);
CREATE TABLE adm_hierarchy_37 PARTITION OF adm_hierarchy FOR VALUES IN (37);
CREATE TABLE adm_hierarchy_38 PARTITION OF adm_hierarchy FOR VALUES IN (38);
CREATE TABLE adm_hierarchy_39 PARTITION OF adm_hierarchy FOR VALUES IN (39);
CREATE TABLE adm_hierarchy_40 PARTITION OF adm_hierarchy FOR VALUES IN (40);
CREATE TABLE adm_hierarchy_41 PARTITION OF adm_hierarchy FOR VALUES IN (41);
CREATE TABLE adm_hierarchy_42 PARTITION OF adm_hierarchy FOR VALUES IN (42);
CREATE TABLE adm_hierarchy_43 PARTITION OF adm_hierarchy FOR VALUES IN (43);
CREATE TABLE adm_hierarchy_44 PARTITION OF adm_hierarchy FOR VALUES IN (44);
CREATE TABLE adm_hierarchy_45 PARTITION OF adm_hierarchy FOR VALUES IN (45);
CREATE TABLE adm_hierarchy_46 PARTITION OF adm_hierarchy FOR VALUES IN (46);
CREATE TABLE adm_hierarchy_47 PARTITION OF adm_hierarchy FOR VALUES IN (47);
CREATE TABLE adm_hierarchy_48 PARTITION OF adm_hierarchy FOR VALUES IN (48);
CREATE TABLE adm_hierarchy_49 PARTITION OF adm_hierarchy FOR VALUES IN (49);
CREATE TABLE adm_hierarchy_50 PARTITION OF adm_hierarchy FOR VALUES IN (50);
CREATE TABLE adm_hierarchy_51 PARTITION OF adm_hierarchy FOR VALUES IN (51);
CREATE TABLE adm_hierarchy_52 PARTITION OF adm_hierarchy FOR VALUES IN (52);
CREATE TABLE adm_hierarchy_53 PARTITION OF adm_hierarchy FOR VALUES IN (53);
CREATE TABLE adm_hierarchy_54 PARTITION OF adm_hierarchy FOR VALUES IN (54);
CREATE TABLE adm_hierarchy_55 PARTITION OF adm_hierarchy FOR VALUES IN (55);
CREATE TABLE adm_hierarchy_56 PARTITION OF adm_hierarchy FOR VALUES IN (56);
CREATE TABLE adm_hierarchy_57 PARTITION OF adm_hierarchy FOR VALUES IN (57);
CREATE TABLE adm_hierarchy_58 PARTITION OF adm_hierarchy FOR VALUES IN (58);
CREATE TABLE adm_hierarchy_59 PARTITION OF adm_hierarchy FOR VALUES IN (59);
CREATE TABLE adm_hierarchy_60 PARTITION OF adm_hierarchy FOR VALUES IN (60);
CREATE TABLE adm_hierarchy_61 PARTITION OF adm_hierarchy FOR VALUES IN (61);
CREATE TABLE adm_hierarchy_62 PARTITION OF adm_hierarchy FOR VALUES IN (62);
CREATE TABLE adm_hierarchy_63 PARTITION OF adm_hierarchy FOR VALUES IN (63);
CREATE TABLE adm_hierarchy_64 PARTITION OF adm_hierarchy FOR VALUES IN (64);
CREATE TABLE adm_hierarchy_65 PARTITION OF adm_hierarchy FOR VALUES IN (65);
CREATE TABLE adm_hierarchy_66 PARTITION OF adm_hierarchy FOR VALUES IN (66);
CREATE TABLE adm_hierarchy_67 PARTITION OF adm_hierarchy FOR VALUES IN (67);
CREATE TABLE adm_hierarchy_68 PARTITION OF adm_hierarchy FOR VALUES IN (68);
CREATE TABLE adm_hierarchy_69 PARTITION OF adm_hierarchy FOR VALUES IN (69);
CREATE TABLE adm_hierarchy_70 PARTITION OF adm_hierarchy FOR VALUES IN (70);
CREATE TABLE adm_hierarchy_71 PARTITION OF adm_hierarchy FOR VALUES IN (71);
CREATE TABLE adm_hierarchy_72 PARTITION OF adm_hierarchy FOR VALUES IN (72);
CREATE TABLE adm_hierarchy_73 PARTITION OF adm_hierarchy FOR VALUES IN (73);
CREATE TABLE adm_hierarchy_74 PARTITION OF adm_hierarchy FOR VALUES IN (74);
CREATE TABLE adm_hierarchy_75 PARTITION OF adm_hierarchy FOR VALUES IN (75);
CREATE TABLE adm_hierarchy_76 PARTITION OF adm_hierarchy FOR VALUES IN (76);
CREATE TABLE adm_hierarchy_77 PARTITION OF adm_hierarchy FOR VALUES IN (77);
CREATE TABLE adm_hierarchy_78 PARTITION OF adm_hierarchy FOR VALUES IN (78);
CREATE TABLE adm_hierarchy_79 PARTITION OF adm_hierarchy FOR VALUES IN (79);
CREATE TABLE adm_hierarchy_80 PARTITION OF adm_hierarchy FOR VALUES IN (80);
CREATE TABLE adm_hierarchy_81 PARTITION OF adm_hierarchy FOR VALUES IN (81);
CREATE TABLE adm_hierarchy_82 PARTITION OF adm_hierarchy FOR VALUES IN (82);
CREATE TABLE adm_hierarchy_83 PARTITION OF adm_hierarchy FOR VALUES IN (83);
CREATE TABLE adm_hierarchy_84 PARTITION OF adm_hierarchy FOR VALUES IN (84);
CREATE TABLE adm_hierarchy_85 PARTITION OF adm_hierarchy FOR VALUES IN (85);
CREATE TABLE adm_hierarchy_86 PARTITION OF adm_hierarchy FOR VALUES IN (86);
CREATE TABLE adm_hierarchy_87 PARTITION OF adm_hierarchy FOR VALUES IN (87);
CREATE TABLE adm_hierarchy_88 PARTITION OF adm_hierarchy FOR VALUES IN (88);
CREATE TABLE adm_hierarchy_89 PARTITION OF adm_hierarchy FOR VALUES IN (89);
CREATE TABLE adm_hierarchy_90 PARTITION OF adm_hierarchy FOR VALUES IN (90);
CREATE TABLE adm_hierarchy_91 PARTITION OF adm_hierarchy FOR VALUES IN (91);
CREATE TABLE adm_hierarchy_92 PARTITION OF adm_hierarchy FOR VALUES IN (92);
CREATE TABLE adm_hierarchy_93 PARTITION OF adm_hierarchy FOR VALUES IN (93);
CREATE TABLE adm_hierarchy_94 PARTITION OF adm_hierarchy FOR VALUES IN (94);
CREATE TABLE adm_hierarchy_95 PARTITION OF adm_hierarchy FOR VALUES IN (95);
CREATE TABLE adm_hierarchy_96 PARTITION OF adm_hierarchy FOR VALUES IN (96);
CREATE TABLE adm_hierarchy_97 PARTITION OF adm_hierarchy FOR VALUES IN (97);
CREATE TABLE adm_hierarchy_98 PARTITION OF adm_hierarchy FOR VALUES IN (98);
CREATE TABLE adm_hierarchy_99 PARTITION OF adm_hierarchy FOR VALUES IN (99);
