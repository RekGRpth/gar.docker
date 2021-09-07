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

CREATE TABLE normative_docs_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT normative_docs_dir_check CHECK (dir = 01)) INHERITS (normative_docs);
CREATE TABLE normative_docs_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT normative_docs_dir_check CHECK (dir = 02)) INHERITS (normative_docs);
CREATE TABLE normative_docs_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT normative_docs_dir_check CHECK (dir = 03)) INHERITS (normative_docs);
CREATE TABLE normative_docs_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT normative_docs_dir_check CHECK (dir = 04)) INHERITS (normative_docs);
CREATE TABLE normative_docs_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT normative_docs_dir_check CHECK (dir = 05)) INHERITS (normative_docs);
CREATE TABLE normative_docs_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT normative_docs_dir_check CHECK (dir = 06)) INHERITS (normative_docs);
CREATE TABLE normative_docs_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT normative_docs_dir_check CHECK (dir = 07)) INHERITS (normative_docs);
CREATE TABLE normative_docs_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT normative_docs_dir_check CHECK (dir = 08)) INHERITS (normative_docs);
CREATE TABLE normative_docs_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT normative_docs_dir_check CHECK (dir = 09)) INHERITS (normative_docs);
CREATE TABLE normative_docs_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT normative_docs_dir_check CHECK (dir = 10)) INHERITS (normative_docs);
CREATE TABLE normative_docs_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT normative_docs_dir_check CHECK (dir = 11)) INHERITS (normative_docs);
CREATE TABLE normative_docs_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT normative_docs_dir_check CHECK (dir = 12)) INHERITS (normative_docs);
CREATE TABLE normative_docs_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT normative_docs_dir_check CHECK (dir = 13)) INHERITS (normative_docs);
CREATE TABLE normative_docs_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT normative_docs_dir_check CHECK (dir = 14)) INHERITS (normative_docs);
CREATE TABLE normative_docs_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT normative_docs_dir_check CHECK (dir = 15)) INHERITS (normative_docs);
CREATE TABLE normative_docs_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT normative_docs_dir_check CHECK (dir = 16)) INHERITS (normative_docs);
CREATE TABLE normative_docs_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT normative_docs_dir_check CHECK (dir = 17)) INHERITS (normative_docs);
CREATE TABLE normative_docs_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT normative_docs_dir_check CHECK (dir = 18)) INHERITS (normative_docs);
CREATE TABLE normative_docs_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT normative_docs_dir_check CHECK (dir = 19)) INHERITS (normative_docs);
CREATE TABLE normative_docs_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT normative_docs_dir_check CHECK (dir = 20)) INHERITS (normative_docs);
CREATE TABLE normative_docs_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT normative_docs_dir_check CHECK (dir = 21)) INHERITS (normative_docs);
CREATE TABLE normative_docs_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT normative_docs_dir_check CHECK (dir = 22)) INHERITS (normative_docs);
CREATE TABLE normative_docs_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT normative_docs_dir_check CHECK (dir = 23)) INHERITS (normative_docs);
CREATE TABLE normative_docs_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT normative_docs_dir_check CHECK (dir = 24)) INHERITS (normative_docs);
CREATE TABLE normative_docs_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT normative_docs_dir_check CHECK (dir = 25)) INHERITS (normative_docs);
CREATE TABLE normative_docs_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT normative_docs_dir_check CHECK (dir = 26)) INHERITS (normative_docs);
CREATE TABLE normative_docs_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT normative_docs_dir_check CHECK (dir = 27)) INHERITS (normative_docs);
CREATE TABLE normative_docs_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT normative_docs_dir_check CHECK (dir = 28)) INHERITS (normative_docs);
CREATE TABLE normative_docs_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT normative_docs_dir_check CHECK (dir = 29)) INHERITS (normative_docs);
CREATE TABLE normative_docs_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT normative_docs_dir_check CHECK (dir = 30)) INHERITS (normative_docs);
CREATE TABLE normative_docs_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT normative_docs_dir_check CHECK (dir = 31)) INHERITS (normative_docs);
CREATE TABLE normative_docs_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT normative_docs_dir_check CHECK (dir = 32)) INHERITS (normative_docs);
CREATE TABLE normative_docs_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT normative_docs_dir_check CHECK (dir = 33)) INHERITS (normative_docs);
CREATE TABLE normative_docs_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT normative_docs_dir_check CHECK (dir = 34)) INHERITS (normative_docs);
CREATE TABLE normative_docs_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT normative_docs_dir_check CHECK (dir = 35)) INHERITS (normative_docs);
CREATE TABLE normative_docs_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT normative_docs_dir_check CHECK (dir = 36)) INHERITS (normative_docs);
CREATE TABLE normative_docs_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT normative_docs_dir_check CHECK (dir = 37)) INHERITS (normative_docs);
CREATE TABLE normative_docs_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT normative_docs_dir_check CHECK (dir = 38)) INHERITS (normative_docs);
CREATE TABLE normative_docs_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT normative_docs_dir_check CHECK (dir = 39)) INHERITS (normative_docs);
CREATE TABLE normative_docs_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT normative_docs_dir_check CHECK (dir = 40)) INHERITS (normative_docs);
CREATE TABLE normative_docs_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT normative_docs_dir_check CHECK (dir = 41)) INHERITS (normative_docs);
CREATE TABLE normative_docs_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT normative_docs_dir_check CHECK (dir = 42)) INHERITS (normative_docs);
CREATE TABLE normative_docs_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT normative_docs_dir_check CHECK (dir = 43)) INHERITS (normative_docs);
CREATE TABLE normative_docs_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT normative_docs_dir_check CHECK (dir = 44)) INHERITS (normative_docs);
CREATE TABLE normative_docs_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT normative_docs_dir_check CHECK (dir = 45)) INHERITS (normative_docs);
CREATE TABLE normative_docs_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT normative_docs_dir_check CHECK (dir = 46)) INHERITS (normative_docs);
CREATE TABLE normative_docs_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT normative_docs_dir_check CHECK (dir = 47)) INHERITS (normative_docs);
CREATE TABLE normative_docs_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT normative_docs_dir_check CHECK (dir = 48)) INHERITS (normative_docs);
CREATE TABLE normative_docs_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT normative_docs_dir_check CHECK (dir = 49)) INHERITS (normative_docs);
CREATE TABLE normative_docs_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT normative_docs_dir_check CHECK (dir = 50)) INHERITS (normative_docs);
CREATE TABLE normative_docs_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT normative_docs_dir_check CHECK (dir = 51)) INHERITS (normative_docs);
CREATE TABLE normative_docs_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT normative_docs_dir_check CHECK (dir = 52)) INHERITS (normative_docs);
CREATE TABLE normative_docs_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT normative_docs_dir_check CHECK (dir = 53)) INHERITS (normative_docs);
CREATE TABLE normative_docs_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT normative_docs_dir_check CHECK (dir = 54)) INHERITS (normative_docs);
CREATE TABLE normative_docs_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT normative_docs_dir_check CHECK (dir = 55)) INHERITS (normative_docs);
CREATE TABLE normative_docs_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT normative_docs_dir_check CHECK (dir = 56)) INHERITS (normative_docs);
CREATE TABLE normative_docs_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT normative_docs_dir_check CHECK (dir = 57)) INHERITS (normative_docs);
CREATE TABLE normative_docs_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT normative_docs_dir_check CHECK (dir = 58)) INHERITS (normative_docs);
CREATE TABLE normative_docs_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT normative_docs_dir_check CHECK (dir = 59)) INHERITS (normative_docs);
CREATE TABLE normative_docs_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT normative_docs_dir_check CHECK (dir = 60)) INHERITS (normative_docs);
CREATE TABLE normative_docs_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT normative_docs_dir_check CHECK (dir = 61)) INHERITS (normative_docs);
CREATE TABLE normative_docs_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT normative_docs_dir_check CHECK (dir = 62)) INHERITS (normative_docs);
CREATE TABLE normative_docs_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT normative_docs_dir_check CHECK (dir = 63)) INHERITS (normative_docs);
CREATE TABLE normative_docs_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT normative_docs_dir_check CHECK (dir = 64)) INHERITS (normative_docs);
CREATE TABLE normative_docs_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT normative_docs_dir_check CHECK (dir = 65)) INHERITS (normative_docs);
CREATE TABLE normative_docs_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT normative_docs_dir_check CHECK (dir = 66)) INHERITS (normative_docs);
CREATE TABLE normative_docs_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT normative_docs_dir_check CHECK (dir = 67)) INHERITS (normative_docs);
CREATE TABLE normative_docs_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT normative_docs_dir_check CHECK (dir = 68)) INHERITS (normative_docs);
CREATE TABLE normative_docs_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT normative_docs_dir_check CHECK (dir = 69)) INHERITS (normative_docs);
CREATE TABLE normative_docs_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT normative_docs_dir_check CHECK (dir = 70)) INHERITS (normative_docs);
CREATE TABLE normative_docs_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT normative_docs_dir_check CHECK (dir = 71)) INHERITS (normative_docs);
CREATE TABLE normative_docs_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT normative_docs_dir_check CHECK (dir = 72)) INHERITS (normative_docs);
CREATE TABLE normative_docs_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT normative_docs_dir_check CHECK (dir = 73)) INHERITS (normative_docs);
CREATE TABLE normative_docs_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT normative_docs_dir_check CHECK (dir = 74)) INHERITS (normative_docs);
CREATE TABLE normative_docs_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT normative_docs_dir_check CHECK (dir = 75)) INHERITS (normative_docs);
CREATE TABLE normative_docs_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT normative_docs_dir_check CHECK (dir = 76)) INHERITS (normative_docs);
CREATE TABLE normative_docs_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT normative_docs_dir_check CHECK (dir = 77)) INHERITS (normative_docs);
CREATE TABLE normative_docs_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT normative_docs_dir_check CHECK (dir = 78)) INHERITS (normative_docs);
CREATE TABLE normative_docs_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT normative_docs_dir_check CHECK (dir = 79)) INHERITS (normative_docs);
CREATE TABLE normative_docs_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT normative_docs_dir_check CHECK (dir = 80)) INHERITS (normative_docs);
CREATE TABLE normative_docs_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT normative_docs_dir_check CHECK (dir = 81)) INHERITS (normative_docs);
CREATE TABLE normative_docs_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT normative_docs_dir_check CHECK (dir = 82)) INHERITS (normative_docs);
CREATE TABLE normative_docs_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT normative_docs_dir_check CHECK (dir = 83)) INHERITS (normative_docs);
CREATE TABLE normative_docs_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT normative_docs_dir_check CHECK (dir = 84)) INHERITS (normative_docs);
CREATE TABLE normative_docs_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT normative_docs_dir_check CHECK (dir = 85)) INHERITS (normative_docs);
CREATE TABLE normative_docs_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT normative_docs_dir_check CHECK (dir = 86)) INHERITS (normative_docs);
CREATE TABLE normative_docs_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT normative_docs_dir_check CHECK (dir = 87)) INHERITS (normative_docs);
CREATE TABLE normative_docs_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT normative_docs_dir_check CHECK (dir = 88)) INHERITS (normative_docs);
CREATE TABLE normative_docs_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT normative_docs_dir_check CHECK (dir = 89)) INHERITS (normative_docs);
CREATE TABLE normative_docs_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT normative_docs_dir_check CHECK (dir = 90)) INHERITS (normative_docs);
CREATE TABLE normative_docs_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT normative_docs_dir_check CHECK (dir = 91)) INHERITS (normative_docs);
CREATE TABLE normative_docs_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT normative_docs_dir_check CHECK (dir = 92)) INHERITS (normative_docs);
CREATE TABLE normative_docs_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT normative_docs_dir_check CHECK (dir = 93)) INHERITS (normative_docs);
CREATE TABLE normative_docs_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT normative_docs_dir_check CHECK (dir = 94)) INHERITS (normative_docs);
CREATE TABLE normative_docs_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT normative_docs_dir_check CHECK (dir = 95)) INHERITS (normative_docs);
CREATE TABLE normative_docs_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT normative_docs_dir_check CHECK (dir = 96)) INHERITS (normative_docs);
CREATE TABLE normative_docs_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT normative_docs_dir_check CHECK (dir = 97)) INHERITS (normative_docs);
CREATE TABLE normative_docs_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT normative_docs_dir_check CHECK (dir = 98)) INHERITS (normative_docs);
CREATE TABLE normative_docs_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT normative_docs_dir_check CHECK (dir = 99)) INHERITS (normative_docs);
