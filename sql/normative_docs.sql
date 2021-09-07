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
  comment VARCHAR(8000)
);
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

CREATE TABLE normative_docs_01 (CONSTRAINT normative_docs_01_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_02 (CONSTRAINT normative_docs_02_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_03 (CONSTRAINT normative_docs_03_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_04 (CONSTRAINT normative_docs_04_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_05 (CONSTRAINT normative_docs_05_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_06 (CONSTRAINT normative_docs_06_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_07 (CONSTRAINT normative_docs_07_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_08 (CONSTRAINT normative_docs_08_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_09 (CONSTRAINT normative_docs_09_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_10 (CONSTRAINT normative_docs_10_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_11 (CONSTRAINT normative_docs_11_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_12 (CONSTRAINT normative_docs_12_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_13 (CONSTRAINT normative_docs_13_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_14 (CONSTRAINT normative_docs_14_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_15 (CONSTRAINT normative_docs_15_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_16 (CONSTRAINT normative_docs_16_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_17 (CONSTRAINT normative_docs_17_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_18 (CONSTRAINT normative_docs_18_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_19 (CONSTRAINT normative_docs_19_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_20 (CONSTRAINT normative_docs_20_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_21 (CONSTRAINT normative_docs_21_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_22 (CONSTRAINT normative_docs_22_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_23 (CONSTRAINT normative_docs_23_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_24 (CONSTRAINT normative_docs_24_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_25 (CONSTRAINT normative_docs_25_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_26 (CONSTRAINT normative_docs_26_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_27 (CONSTRAINT normative_docs_27_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_28 (CONSTRAINT normative_docs_28_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_29 (CONSTRAINT normative_docs_29_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_30 (CONSTRAINT normative_docs_30_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_31 (CONSTRAINT normative_docs_31_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_32 (CONSTRAINT normative_docs_32_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_33 (CONSTRAINT normative_docs_33_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_34 (CONSTRAINT normative_docs_34_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_35 (CONSTRAINT normative_docs_35_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_36 (CONSTRAINT normative_docs_36_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_37 (CONSTRAINT normative_docs_37_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_38 (CONSTRAINT normative_docs_38_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_39 (CONSTRAINT normative_docs_39_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_40 (CONSTRAINT normative_docs_40_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_41 (CONSTRAINT normative_docs_41_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_42 (CONSTRAINT normative_docs_42_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_43 (CONSTRAINT normative_docs_43_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_44 (CONSTRAINT normative_docs_44_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_45 (CONSTRAINT normative_docs_45_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_46 (CONSTRAINT normative_docs_46_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_47 (CONSTRAINT normative_docs_47_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_48 (CONSTRAINT normative_docs_48_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_49 (CONSTRAINT normative_docs_49_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_50 (CONSTRAINT normative_docs_50_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_51 (CONSTRAINT normative_docs_51_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_52 (CONSTRAINT normative_docs_52_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_53 (CONSTRAINT normative_docs_53_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_54 (CONSTRAINT normative_docs_54_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_55 (CONSTRAINT normative_docs_55_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_56 (CONSTRAINT normative_docs_56_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_57 (CONSTRAINT normative_docs_57_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_58 (CONSTRAINT normative_docs_58_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_59 (CONSTRAINT normative_docs_59_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_60 (CONSTRAINT normative_docs_60_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_61 (CONSTRAINT normative_docs_61_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_62 (CONSTRAINT normative_docs_62_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_63 (CONSTRAINT normative_docs_63_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_64 (CONSTRAINT normative_docs_64_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_65 (CONSTRAINT normative_docs_65_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_66 (CONSTRAINT normative_docs_66_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_67 (CONSTRAINT normative_docs_67_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_68 (CONSTRAINT normative_docs_68_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_69 (CONSTRAINT normative_docs_69_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_70 (CONSTRAINT normative_docs_70_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_71 (CONSTRAINT normative_docs_71_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_72 (CONSTRAINT normative_docs_72_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_73 (CONSTRAINT normative_docs_73_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_74 (CONSTRAINT normative_docs_74_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_75 (CONSTRAINT normative_docs_75_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_76 (CONSTRAINT normative_docs_76_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_77 (CONSTRAINT normative_docs_77_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_78 (CONSTRAINT normative_docs_78_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_79 (CONSTRAINT normative_docs_79_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_80 (CONSTRAINT normative_docs_80_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_81 (CONSTRAINT normative_docs_81_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_82 (CONSTRAINT normative_docs_82_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_83 (CONSTRAINT normative_docs_83_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_84 (CONSTRAINT normative_docs_84_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_85 (CONSTRAINT normative_docs_85_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_86 (CONSTRAINT normative_docs_86_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_87 (CONSTRAINT normative_docs_87_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_88 (CONSTRAINT normative_docs_88_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_89 (CONSTRAINT normative_docs_89_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_90 (CONSTRAINT normative_docs_90_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_91 (CONSTRAINT normative_docs_91_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_92 (CONSTRAINT normative_docs_92_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_93 (CONSTRAINT normative_docs_93_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_94 (CONSTRAINT normative_docs_94_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_95 (CONSTRAINT normative_docs_95_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_96 (CONSTRAINT normative_docs_96_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_97 (CONSTRAINT normative_docs_97_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_98 (CONSTRAINT normative_docs_98_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
CREATE TABLE normative_docs_99 (CONSTRAINT normative_docs_99_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
