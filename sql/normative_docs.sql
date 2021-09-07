CREATE TABLE normative_docs (
  id BIGINT NOT NULL PRIMARY KEY,
  name VARCHAR(8000) NOT NULL,
  date DATE NOT NULL,
  number VARCHAR(150) NOT NULL,
  type INT NOT NULL,
  kind INT NOT NULL,
  updatedate DATE NOT NULL,
  orgname VARCHAR(255),
  regnum VARCHAR(100),
  regdate DATE,
  accdate DATE,
  comment VARCHAR(8000),
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir);
COMMENT ON TABLE normative_docs IS 'Сведения о нормативном документе, являющемся основанием присвоения адресному элементу наименования';
COMMENT ON COLUMN normative_docs.id IS 'Уникальный идентификатор документа';
COMMENT ON COLUMN normative_docs.name IS 'Наименование документа';
COMMENT ON COLUMN normative_docs.date IS 'Дата документа';
COMMENT ON COLUMN normative_docs.number IS 'Номер документа';
COMMENT ON COLUMN normative_docs.type IS 'Тип документа';
COMMENT ON COLUMN normative_docs.kind IS 'Вид документа';
COMMENT ON COLUMN normative_docs.updatedate IS 'Дата обновления';
COMMENT ON COLUMN normative_docs.orgname IS 'Наименование органа создвшего нормативный документ';
COMMENT ON COLUMN normative_docs.regnum IS 'Номер государственной регистрации';
COMMENT ON COLUMN normative_docs.regdate IS 'Дата государственной регистрации';
COMMENT ON COLUMN normative_docs.accdate IS 'Дата вступления в силу нормативного документа';
COMMENT ON COLUMN normative_docs.comment IS 'Комментарий';

CREATE TABLE normative_docs_01 PARTITION OF normative_docs FOR VALUES IN (01);
CREATE TABLE normative_docs_02 PARTITION OF normative_docs FOR VALUES IN (02);
CREATE TABLE normative_docs_03 PARTITION OF normative_docs FOR VALUES IN (03);
CREATE TABLE normative_docs_04 PARTITION OF normative_docs FOR VALUES IN (04);
CREATE TABLE normative_docs_05 PARTITION OF normative_docs FOR VALUES IN (05);
CREATE TABLE normative_docs_06 PARTITION OF normative_docs FOR VALUES IN (06);
CREATE TABLE normative_docs_07 PARTITION OF normative_docs FOR VALUES IN (07);
CREATE TABLE normative_docs_08 PARTITION OF normative_docs FOR VALUES IN (08);
CREATE TABLE normative_docs_09 PARTITION OF normative_docs FOR VALUES IN (09);
CREATE TABLE normative_docs_10 PARTITION OF normative_docs FOR VALUES IN (10);
CREATE TABLE normative_docs_11 PARTITION OF normative_docs FOR VALUES IN (11);
CREATE TABLE normative_docs_12 PARTITION OF normative_docs FOR VALUES IN (12);
CREATE TABLE normative_docs_13 PARTITION OF normative_docs FOR VALUES IN (13);
CREATE TABLE normative_docs_14 PARTITION OF normative_docs FOR VALUES IN (14);
CREATE TABLE normative_docs_15 PARTITION OF normative_docs FOR VALUES IN (15);
CREATE TABLE normative_docs_16 PARTITION OF normative_docs FOR VALUES IN (16);
CREATE TABLE normative_docs_17 PARTITION OF normative_docs FOR VALUES IN (17);
CREATE TABLE normative_docs_18 PARTITION OF normative_docs FOR VALUES IN (18);
CREATE TABLE normative_docs_19 PARTITION OF normative_docs FOR VALUES IN (19);
CREATE TABLE normative_docs_20 PARTITION OF normative_docs FOR VALUES IN (20);
CREATE TABLE normative_docs_21 PARTITION OF normative_docs FOR VALUES IN (21);
CREATE TABLE normative_docs_22 PARTITION OF normative_docs FOR VALUES IN (22);
CREATE TABLE normative_docs_23 PARTITION OF normative_docs FOR VALUES IN (23);
CREATE TABLE normative_docs_24 PARTITION OF normative_docs FOR VALUES IN (24);
CREATE TABLE normative_docs_25 PARTITION OF normative_docs FOR VALUES IN (25);
CREATE TABLE normative_docs_26 PARTITION OF normative_docs FOR VALUES IN (26);
CREATE TABLE normative_docs_27 PARTITION OF normative_docs FOR VALUES IN (27);
CREATE TABLE normative_docs_28 PARTITION OF normative_docs FOR VALUES IN (28);
CREATE TABLE normative_docs_29 PARTITION OF normative_docs FOR VALUES IN (29);
CREATE TABLE normative_docs_30 PARTITION OF normative_docs FOR VALUES IN (30);
CREATE TABLE normative_docs_31 PARTITION OF normative_docs FOR VALUES IN (31);
CREATE TABLE normative_docs_32 PARTITION OF normative_docs FOR VALUES IN (32);
CREATE TABLE normative_docs_33 PARTITION OF normative_docs FOR VALUES IN (33);
CREATE TABLE normative_docs_34 PARTITION OF normative_docs FOR VALUES IN (34);
CREATE TABLE normative_docs_35 PARTITION OF normative_docs FOR VALUES IN (35);
CREATE TABLE normative_docs_36 PARTITION OF normative_docs FOR VALUES IN (36);
CREATE TABLE normative_docs_37 PARTITION OF normative_docs FOR VALUES IN (37);
CREATE TABLE normative_docs_38 PARTITION OF normative_docs FOR VALUES IN (38);
CREATE TABLE normative_docs_39 PARTITION OF normative_docs FOR VALUES IN (39);
CREATE TABLE normative_docs_40 PARTITION OF normative_docs FOR VALUES IN (40);
CREATE TABLE normative_docs_41 PARTITION OF normative_docs FOR VALUES IN (41);
CREATE TABLE normative_docs_42 PARTITION OF normative_docs FOR VALUES IN (42);
CREATE TABLE normative_docs_43 PARTITION OF normative_docs FOR VALUES IN (43);
CREATE TABLE normative_docs_44 PARTITION OF normative_docs FOR VALUES IN (44);
CREATE TABLE normative_docs_45 PARTITION OF normative_docs FOR VALUES IN (45);
CREATE TABLE normative_docs_46 PARTITION OF normative_docs FOR VALUES IN (46);
CREATE TABLE normative_docs_47 PARTITION OF normative_docs FOR VALUES IN (47);
CREATE TABLE normative_docs_48 PARTITION OF normative_docs FOR VALUES IN (48);
CREATE TABLE normative_docs_49 PARTITION OF normative_docs FOR VALUES IN (49);
CREATE TABLE normative_docs_50 PARTITION OF normative_docs FOR VALUES IN (50);
CREATE TABLE normative_docs_51 PARTITION OF normative_docs FOR VALUES IN (51);
CREATE TABLE normative_docs_52 PARTITION OF normative_docs FOR VALUES IN (52);
CREATE TABLE normative_docs_53 PARTITION OF normative_docs FOR VALUES IN (53);
CREATE TABLE normative_docs_54 PARTITION OF normative_docs FOR VALUES IN (54);
CREATE TABLE normative_docs_55 PARTITION OF normative_docs FOR VALUES IN (55);
CREATE TABLE normative_docs_56 PARTITION OF normative_docs FOR VALUES IN (56);
CREATE TABLE normative_docs_57 PARTITION OF normative_docs FOR VALUES IN (57);
CREATE TABLE normative_docs_58 PARTITION OF normative_docs FOR VALUES IN (58);
CREATE TABLE normative_docs_59 PARTITION OF normative_docs FOR VALUES IN (59);
CREATE TABLE normative_docs_60 PARTITION OF normative_docs FOR VALUES IN (60);
CREATE TABLE normative_docs_61 PARTITION OF normative_docs FOR VALUES IN (61);
CREATE TABLE normative_docs_62 PARTITION OF normative_docs FOR VALUES IN (62);
CREATE TABLE normative_docs_63 PARTITION OF normative_docs FOR VALUES IN (63);
CREATE TABLE normative_docs_64 PARTITION OF normative_docs FOR VALUES IN (64);
CREATE TABLE normative_docs_65 PARTITION OF normative_docs FOR VALUES IN (65);
CREATE TABLE normative_docs_66 PARTITION OF normative_docs FOR VALUES IN (66);
CREATE TABLE normative_docs_67 PARTITION OF normative_docs FOR VALUES IN (67);
CREATE TABLE normative_docs_68 PARTITION OF normative_docs FOR VALUES IN (68);
CREATE TABLE normative_docs_69 PARTITION OF normative_docs FOR VALUES IN (69);
CREATE TABLE normative_docs_70 PARTITION OF normative_docs FOR VALUES IN (70);
CREATE TABLE normative_docs_71 PARTITION OF normative_docs FOR VALUES IN (71);
CREATE TABLE normative_docs_72 PARTITION OF normative_docs FOR VALUES IN (72);
CREATE TABLE normative_docs_73 PARTITION OF normative_docs FOR VALUES IN (73);
CREATE TABLE normative_docs_74 PARTITION OF normative_docs FOR VALUES IN (74);
CREATE TABLE normative_docs_75 PARTITION OF normative_docs FOR VALUES IN (75);
CREATE TABLE normative_docs_76 PARTITION OF normative_docs FOR VALUES IN (76);
CREATE TABLE normative_docs_77 PARTITION OF normative_docs FOR VALUES IN (77);
CREATE TABLE normative_docs_78 PARTITION OF normative_docs FOR VALUES IN (78);
CREATE TABLE normative_docs_79 PARTITION OF normative_docs FOR VALUES IN (79);
CREATE TABLE normative_docs_80 PARTITION OF normative_docs FOR VALUES IN (80);
CREATE TABLE normative_docs_81 PARTITION OF normative_docs FOR VALUES IN (81);
CREATE TABLE normative_docs_82 PARTITION OF normative_docs FOR VALUES IN (82);
CREATE TABLE normative_docs_83 PARTITION OF normative_docs FOR VALUES IN (83);
CREATE TABLE normative_docs_84 PARTITION OF normative_docs FOR VALUES IN (84);
CREATE TABLE normative_docs_85 PARTITION OF normative_docs FOR VALUES IN (85);
CREATE TABLE normative_docs_86 PARTITION OF normative_docs FOR VALUES IN (86);
CREATE TABLE normative_docs_87 PARTITION OF normative_docs FOR VALUES IN (87);
CREATE TABLE normative_docs_88 PARTITION OF normative_docs FOR VALUES IN (88);
CREATE TABLE normative_docs_89 PARTITION OF normative_docs FOR VALUES IN (89);
CREATE TABLE normative_docs_90 PARTITION OF normative_docs FOR VALUES IN (90);
CREATE TABLE normative_docs_91 PARTITION OF normative_docs FOR VALUES IN (91);
CREATE TABLE normative_docs_92 PARTITION OF normative_docs FOR VALUES IN (92);
CREATE TABLE normative_docs_93 PARTITION OF normative_docs FOR VALUES IN (93);
CREATE TABLE normative_docs_94 PARTITION OF normative_docs FOR VALUES IN (94);
CREATE TABLE normative_docs_95 PARTITION OF normative_docs FOR VALUES IN (95);
CREATE TABLE normative_docs_96 PARTITION OF normative_docs FOR VALUES IN (96);
CREATE TABLE normative_docs_97 PARTITION OF normative_docs FOR VALUES IN (97);
CREATE TABLE normative_docs_98 PARTITION OF normative_docs FOR VALUES IN (98);
CREATE TABLE normative_docs_99 PARTITION OF normative_docs FOR VALUES IN (99);
