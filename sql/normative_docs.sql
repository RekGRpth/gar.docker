CREATE TABLE gar.normative_docs (
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
COMMENT ON TABLE gar.normative_docs IS 'Сведения о нормативном документе, являющемся основанием присвоения адресному элементу наименования';
COMMENT ON COLUMN gar.normative_docs.id IS 'Уникальный идентификатор документа';
COMMENT ON COLUMN gar.normative_docs.name IS 'Наименование документа';
COMMENT ON COLUMN gar.normative_docs.date IS 'Дата документа';
COMMENT ON COLUMN gar.normative_docs.number IS 'Номер документа';
COMMENT ON COLUMN gar.normative_docs.type IS 'Тип документа';
COMMENT ON COLUMN gar.normative_docs.kind IS 'Вид документа';
COMMENT ON COLUMN gar.normative_docs.updatedate IS 'Дата обновления';
COMMENT ON COLUMN gar.normative_docs.orgname IS 'Наименование органа создвшего нормативный документ';
COMMENT ON COLUMN gar.normative_docs.regnum IS 'Номер государственной регистрации';
COMMENT ON COLUMN gar.normative_docs.regdate IS 'Дата государственной регистрации';
COMMENT ON COLUMN gar.normative_docs.accdate IS 'Дата вступления в силу нормативного документа';
COMMENT ON COLUMN gar.normative_docs.comment IS 'Комментарий';

CREATE TABLE gar.normative_docs_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT CHECK (dir = 01)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT CHECK (dir = 02)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT CHECK (dir = 03)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT CHECK (dir = 04)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT CHECK (dir = 05)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT CHECK (dir = 06)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT CHECK (dir = 07)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT CHECK (dir = 08)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT CHECK (dir = 09)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT CHECK (dir = 10)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT CHECK (dir = 11)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT CHECK (dir = 12)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT CHECK (dir = 13)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT CHECK (dir = 14)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT CHECK (dir = 15)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT CHECK (dir = 16)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT CHECK (dir = 17)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT CHECK (dir = 18)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT CHECK (dir = 19)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT CHECK (dir = 20)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT CHECK (dir = 21)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT CHECK (dir = 22)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT CHECK (dir = 23)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT CHECK (dir = 24)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT CHECK (dir = 25)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT CHECK (dir = 26)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT CHECK (dir = 27)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT CHECK (dir = 28)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT CHECK (dir = 29)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT CHECK (dir = 30)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT CHECK (dir = 31)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT CHECK (dir = 32)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT CHECK (dir = 33)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT CHECK (dir = 34)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT CHECK (dir = 35)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT CHECK (dir = 36)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT CHECK (dir = 37)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT CHECK (dir = 38)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT CHECK (dir = 39)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT CHECK (dir = 40)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT CHECK (dir = 41)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT CHECK (dir = 42)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT CHECK (dir = 43)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT CHECK (dir = 44)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT CHECK (dir = 45)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT CHECK (dir = 46)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT CHECK (dir = 47)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT CHECK (dir = 48)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT CHECK (dir = 49)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT CHECK (dir = 50)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT CHECK (dir = 51)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT CHECK (dir = 52)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT CHECK (dir = 53)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT CHECK (dir = 54)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT CHECK (dir = 55)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT CHECK (dir = 56)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT CHECK (dir = 57)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT CHECK (dir = 58)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT CHECK (dir = 59)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT CHECK (dir = 60)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT CHECK (dir = 61)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT CHECK (dir = 62)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT CHECK (dir = 63)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT CHECK (dir = 64)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT CHECK (dir = 65)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT CHECK (dir = 66)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT CHECK (dir = 67)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT CHECK (dir = 68)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT CHECK (dir = 69)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT CHECK (dir = 70)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT CHECK (dir = 71)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT CHECK (dir = 72)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT CHECK (dir = 73)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT CHECK (dir = 74)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT CHECK (dir = 75)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT CHECK (dir = 76)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT CHECK (dir = 77)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT CHECK (dir = 78)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT CHECK (dir = 79)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT CHECK (dir = 80)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT CHECK (dir = 81)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT CHECK (dir = 82)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT CHECK (dir = 83)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT CHECK (dir = 84)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT CHECK (dir = 85)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT CHECK (dir = 86)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT CHECK (dir = 87)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT CHECK (dir = 88)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT CHECK (dir = 89)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT CHECK (dir = 90)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT CHECK (dir = 91)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT CHECK (dir = 92)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT CHECK (dir = 93)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT CHECK (dir = 94)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT CHECK (dir = 95)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT CHECK (dir = 96)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT CHECK (dir = 97)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT CHECK (dir = 98)) INHERITS (gar.normative_docs);
CREATE TABLE gar.normative_docs_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT CHECK (dir = 99)) INHERITS (gar.normative_docs);
