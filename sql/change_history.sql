CREATE TABLE gar.change_history (
  changeid BIGINT NOT NULL,
  objectid BIGINT NOT NULL,
  adrobjectid UUID NOT NULL,
  opertypeid INT NOT NULL,
  ndocid BIGINT,
  changedate DATE NOT NULL
);
COMMENT ON TABLE gar.change_history IS 'Сведения по истории изменений';
COMMENT ON COLUMN gar.change_history.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.change_history.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN gar.change_history.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN gar.change_history.opertypeid IS 'Тип операции';
COMMENT ON COLUMN gar.change_history.ndocid IS 'ID документа';
COMMENT ON COLUMN gar.change_history.changedate IS 'Дата изменения';

CREATE TABLE gar.change_history_01 (dir SMALLINT NOT NULL DEFAULT 01, CONSTRAINT CHECK (dir = 01)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_02 (dir SMALLINT NOT NULL DEFAULT 02, CONSTRAINT CHECK (dir = 02)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_03 (dir SMALLINT NOT NULL DEFAULT 03, CONSTRAINT CHECK (dir = 03)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_04 (dir SMALLINT NOT NULL DEFAULT 04, CONSTRAINT CHECK (dir = 04)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_05 (dir SMALLINT NOT NULL DEFAULT 05, CONSTRAINT CHECK (dir = 05)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_06 (dir SMALLINT NOT NULL DEFAULT 06, CONSTRAINT CHECK (dir = 06)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_07 (dir SMALLINT NOT NULL DEFAULT 07, CONSTRAINT CHECK (dir = 07)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_08 (dir SMALLINT NOT NULL DEFAULT 08, CONSTRAINT CHECK (dir = 08)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_09 (dir SMALLINT NOT NULL DEFAULT 09, CONSTRAINT CHECK (dir = 09)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_10 (dir SMALLINT NOT NULL DEFAULT 10, CONSTRAINT CHECK (dir = 10)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_11 (dir SMALLINT NOT NULL DEFAULT 11, CONSTRAINT CHECK (dir = 11)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_12 (dir SMALLINT NOT NULL DEFAULT 12, CONSTRAINT CHECK (dir = 12)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_13 (dir SMALLINT NOT NULL DEFAULT 13, CONSTRAINT CHECK (dir = 13)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_14 (dir SMALLINT NOT NULL DEFAULT 14, CONSTRAINT CHECK (dir = 14)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_15 (dir SMALLINT NOT NULL DEFAULT 15, CONSTRAINT CHECK (dir = 15)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_16 (dir SMALLINT NOT NULL DEFAULT 16, CONSTRAINT CHECK (dir = 16)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_17 (dir SMALLINT NOT NULL DEFAULT 17, CONSTRAINT CHECK (dir = 17)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_18 (dir SMALLINT NOT NULL DEFAULT 18, CONSTRAINT CHECK (dir = 18)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_19 (dir SMALLINT NOT NULL DEFAULT 19, CONSTRAINT CHECK (dir = 19)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_20 (dir SMALLINT NOT NULL DEFAULT 20, CONSTRAINT CHECK (dir = 20)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_21 (dir SMALLINT NOT NULL DEFAULT 21, CONSTRAINT CHECK (dir = 21)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_22 (dir SMALLINT NOT NULL DEFAULT 22, CONSTRAINT CHECK (dir = 22)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_23 (dir SMALLINT NOT NULL DEFAULT 23, CONSTRAINT CHECK (dir = 23)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_24 (dir SMALLINT NOT NULL DEFAULT 24, CONSTRAINT CHECK (dir = 24)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_25 (dir SMALLINT NOT NULL DEFAULT 25, CONSTRAINT CHECK (dir = 25)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_26 (dir SMALLINT NOT NULL DEFAULT 26, CONSTRAINT CHECK (dir = 26)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_27 (dir SMALLINT NOT NULL DEFAULT 27, CONSTRAINT CHECK (dir = 27)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_28 (dir SMALLINT NOT NULL DEFAULT 28, CONSTRAINT CHECK (dir = 28)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_29 (dir SMALLINT NOT NULL DEFAULT 29, CONSTRAINT CHECK (dir = 29)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_30 (dir SMALLINT NOT NULL DEFAULT 30, CONSTRAINT CHECK (dir = 30)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_31 (dir SMALLINT NOT NULL DEFAULT 31, CONSTRAINT CHECK (dir = 31)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_32 (dir SMALLINT NOT NULL DEFAULT 32, CONSTRAINT CHECK (dir = 32)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_33 (dir SMALLINT NOT NULL DEFAULT 33, CONSTRAINT CHECK (dir = 33)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_34 (dir SMALLINT NOT NULL DEFAULT 34, CONSTRAINT CHECK (dir = 34)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_35 (dir SMALLINT NOT NULL DEFAULT 35, CONSTRAINT CHECK (dir = 35)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_36 (dir SMALLINT NOT NULL DEFAULT 36, CONSTRAINT CHECK (dir = 36)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_37 (dir SMALLINT NOT NULL DEFAULT 37, CONSTRAINT CHECK (dir = 37)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_38 (dir SMALLINT NOT NULL DEFAULT 38, CONSTRAINT CHECK (dir = 38)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_39 (dir SMALLINT NOT NULL DEFAULT 39, CONSTRAINT CHECK (dir = 39)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_40 (dir SMALLINT NOT NULL DEFAULT 40, CONSTRAINT CHECK (dir = 40)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_41 (dir SMALLINT NOT NULL DEFAULT 41, CONSTRAINT CHECK (dir = 41)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_42 (dir SMALLINT NOT NULL DEFAULT 42, CONSTRAINT CHECK (dir = 42)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_43 (dir SMALLINT NOT NULL DEFAULT 43, CONSTRAINT CHECK (dir = 43)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_44 (dir SMALLINT NOT NULL DEFAULT 44, CONSTRAINT CHECK (dir = 44)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_45 (dir SMALLINT NOT NULL DEFAULT 45, CONSTRAINT CHECK (dir = 45)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_46 (dir SMALLINT NOT NULL DEFAULT 46, CONSTRAINT CHECK (dir = 46)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_47 (dir SMALLINT NOT NULL DEFAULT 47, CONSTRAINT CHECK (dir = 47)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_48 (dir SMALLINT NOT NULL DEFAULT 48, CONSTRAINT CHECK (dir = 48)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_49 (dir SMALLINT NOT NULL DEFAULT 49, CONSTRAINT CHECK (dir = 49)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_50 (dir SMALLINT NOT NULL DEFAULT 50, CONSTRAINT CHECK (dir = 50)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_51 (dir SMALLINT NOT NULL DEFAULT 51, CONSTRAINT CHECK (dir = 51)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_52 (dir SMALLINT NOT NULL DEFAULT 52, CONSTRAINT CHECK (dir = 52)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_53 (dir SMALLINT NOT NULL DEFAULT 53, CONSTRAINT CHECK (dir = 53)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_54 (dir SMALLINT NOT NULL DEFAULT 54, CONSTRAINT CHECK (dir = 54)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_55 (dir SMALLINT NOT NULL DEFAULT 55, CONSTRAINT CHECK (dir = 55)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_56 (dir SMALLINT NOT NULL DEFAULT 56, CONSTRAINT CHECK (dir = 56)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_57 (dir SMALLINT NOT NULL DEFAULT 57, CONSTRAINT CHECK (dir = 57)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_58 (dir SMALLINT NOT NULL DEFAULT 58, CONSTRAINT CHECK (dir = 58)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_59 (dir SMALLINT NOT NULL DEFAULT 59, CONSTRAINT CHECK (dir = 59)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_60 (dir SMALLINT NOT NULL DEFAULT 60, CONSTRAINT CHECK (dir = 60)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_61 (dir SMALLINT NOT NULL DEFAULT 61, CONSTRAINT CHECK (dir = 61)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_62 (dir SMALLINT NOT NULL DEFAULT 62, CONSTRAINT CHECK (dir = 62)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_63 (dir SMALLINT NOT NULL DEFAULT 63, CONSTRAINT CHECK (dir = 63)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_64 (dir SMALLINT NOT NULL DEFAULT 64, CONSTRAINT CHECK (dir = 64)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_65 (dir SMALLINT NOT NULL DEFAULT 65, CONSTRAINT CHECK (dir = 65)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_66 (dir SMALLINT NOT NULL DEFAULT 66, CONSTRAINT CHECK (dir = 66)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_67 (dir SMALLINT NOT NULL DEFAULT 67, CONSTRAINT CHECK (dir = 67)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_68 (dir SMALLINT NOT NULL DEFAULT 68, CONSTRAINT CHECK (dir = 68)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_69 (dir SMALLINT NOT NULL DEFAULT 69, CONSTRAINT CHECK (dir = 69)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_70 (dir SMALLINT NOT NULL DEFAULT 70, CONSTRAINT CHECK (dir = 70)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_71 (dir SMALLINT NOT NULL DEFAULT 71, CONSTRAINT CHECK (dir = 71)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_72 (dir SMALLINT NOT NULL DEFAULT 72, CONSTRAINT CHECK (dir = 72)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_73 (dir SMALLINT NOT NULL DEFAULT 73, CONSTRAINT CHECK (dir = 73)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_74 (dir SMALLINT NOT NULL DEFAULT 74, CONSTRAINT CHECK (dir = 74)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_75 (dir SMALLINT NOT NULL DEFAULT 75, CONSTRAINT CHECK (dir = 75)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_76 (dir SMALLINT NOT NULL DEFAULT 76, CONSTRAINT CHECK (dir = 76)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_77 (dir SMALLINT NOT NULL DEFAULT 77, CONSTRAINT CHECK (dir = 77)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_78 (dir SMALLINT NOT NULL DEFAULT 78, CONSTRAINT CHECK (dir = 78)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_79 (dir SMALLINT NOT NULL DEFAULT 79, CONSTRAINT CHECK (dir = 79)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_80 (dir SMALLINT NOT NULL DEFAULT 80, CONSTRAINT CHECK (dir = 80)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_81 (dir SMALLINT NOT NULL DEFAULT 81, CONSTRAINT CHECK (dir = 81)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_82 (dir SMALLINT NOT NULL DEFAULT 82, CONSTRAINT CHECK (dir = 82)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_83 (dir SMALLINT NOT NULL DEFAULT 83, CONSTRAINT CHECK (dir = 83)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_84 (dir SMALLINT NOT NULL DEFAULT 84, CONSTRAINT CHECK (dir = 84)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_85 (dir SMALLINT NOT NULL DEFAULT 85, CONSTRAINT CHECK (dir = 85)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_86 (dir SMALLINT NOT NULL DEFAULT 86, CONSTRAINT CHECK (dir = 86)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_87 (dir SMALLINT NOT NULL DEFAULT 87, CONSTRAINT CHECK (dir = 87)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_88 (dir SMALLINT NOT NULL DEFAULT 88, CONSTRAINT CHECK (dir = 88)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_89 (dir SMALLINT NOT NULL DEFAULT 89, CONSTRAINT CHECK (dir = 89)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_90 (dir SMALLINT NOT NULL DEFAULT 90, CONSTRAINT CHECK (dir = 90)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_91 (dir SMALLINT NOT NULL DEFAULT 91, CONSTRAINT CHECK (dir = 91)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_92 (dir SMALLINT NOT NULL DEFAULT 92, CONSTRAINT CHECK (dir = 92)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_93 (dir SMALLINT NOT NULL DEFAULT 93, CONSTRAINT CHECK (dir = 93)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_94 (dir SMALLINT NOT NULL DEFAULT 94, CONSTRAINT CHECK (dir = 94)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_95 (dir SMALLINT NOT NULL DEFAULT 95, CONSTRAINT CHECK (dir = 95)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_96 (dir SMALLINT NOT NULL DEFAULT 96, CONSTRAINT CHECK (dir = 96)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_97 (dir SMALLINT NOT NULL DEFAULT 97, CONSTRAINT CHECK (dir = 97)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_98 (dir SMALLINT NOT NULL DEFAULT 98, CONSTRAINT CHECK (dir = 98)) INHERITS (gar.change_history);
CREATE TABLE gar.change_history_99 (dir SMALLINT NOT NULL DEFAULT 99, CONSTRAINT CHECK (dir = 99)) INHERITS (gar.change_history);
