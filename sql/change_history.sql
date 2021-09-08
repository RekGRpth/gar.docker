CREATE TABLE IF NOT EXISTS change_history (
  changeid BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  adrobjectid UUID NOT NULL,
  opertypeid INT NOT NULL,
  ndocid BIGINT,
  changedate DATE NOT NULL
);
COMMENT ON TABLE change_history IS 'Сведения по истории изменений';
COMMENT ON COLUMN change_history.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN change_history.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN change_history.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN change_history.opertypeid IS 'Тип операции';
COMMENT ON COLUMN change_history.ndocid IS 'ID документа';
COMMENT ON COLUMN change_history.changedate IS 'Дата изменения';
CREATE TABLE IF NOT EXISTS change_history_01 (CONSTRAINT change_history_01_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_02 (CONSTRAINT change_history_02_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_03 (CONSTRAINT change_history_03_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_04 (CONSTRAINT change_history_04_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_05 (CONSTRAINT change_history_05_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_06 (CONSTRAINT change_history_06_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_07 (CONSTRAINT change_history_07_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_08 (CONSTRAINT change_history_08_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_09 (CONSTRAINT change_history_09_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_10 (CONSTRAINT change_history_10_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_11 (CONSTRAINT change_history_11_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_12 (CONSTRAINT change_history_12_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_13 (CONSTRAINT change_history_13_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_14 (CONSTRAINT change_history_14_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_15 (CONSTRAINT change_history_15_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_16 (CONSTRAINT change_history_16_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_17 (CONSTRAINT change_history_17_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_18 (CONSTRAINT change_history_18_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_19 (CONSTRAINT change_history_19_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_20 (CONSTRAINT change_history_20_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_21 (CONSTRAINT change_history_21_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_22 (CONSTRAINT change_history_22_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_23 (CONSTRAINT change_history_23_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_24 (CONSTRAINT change_history_24_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_25 (CONSTRAINT change_history_25_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_26 (CONSTRAINT change_history_26_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_27 (CONSTRAINT change_history_27_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_28 (CONSTRAINT change_history_28_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_29 (CONSTRAINT change_history_29_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_30 (CONSTRAINT change_history_30_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_31 (CONSTRAINT change_history_31_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_32 (CONSTRAINT change_history_32_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_33 (CONSTRAINT change_history_33_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_34 (CONSTRAINT change_history_34_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_35 (CONSTRAINT change_history_35_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_36 (CONSTRAINT change_history_36_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_37 (CONSTRAINT change_history_37_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_38 (CONSTRAINT change_history_38_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_39 (CONSTRAINT change_history_39_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_40 (CONSTRAINT change_history_40_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_41 (CONSTRAINT change_history_41_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_42 (CONSTRAINT change_history_42_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_43 (CONSTRAINT change_history_43_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_44 (CONSTRAINT change_history_44_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_45 (CONSTRAINT change_history_45_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_46 (CONSTRAINT change_history_46_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_47 (CONSTRAINT change_history_47_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_48 (CONSTRAINT change_history_48_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_49 (CONSTRAINT change_history_49_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_50 (CONSTRAINT change_history_50_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_51 (CONSTRAINT change_history_51_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_52 (CONSTRAINT change_history_52_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_53 (CONSTRAINT change_history_53_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_54 (CONSTRAINT change_history_54_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_55 (CONSTRAINT change_history_55_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_56 (CONSTRAINT change_history_56_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_57 (CONSTRAINT change_history_57_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_58 (CONSTRAINT change_history_58_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_59 (CONSTRAINT change_history_59_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_60 (CONSTRAINT change_history_60_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_61 (CONSTRAINT change_history_61_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_62 (CONSTRAINT change_history_62_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_63 (CONSTRAINT change_history_63_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_64 (CONSTRAINT change_history_64_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_65 (CONSTRAINT change_history_65_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_66 (CONSTRAINT change_history_66_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_67 (CONSTRAINT change_history_67_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_68 (CONSTRAINT change_history_68_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_69 (CONSTRAINT change_history_69_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_70 (CONSTRAINT change_history_70_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_71 (CONSTRAINT change_history_71_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_72 (CONSTRAINT change_history_72_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_73 (CONSTRAINT change_history_73_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_74 (CONSTRAINT change_history_74_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_75 (CONSTRAINT change_history_75_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_76 (CONSTRAINT change_history_76_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_77 (CONSTRAINT change_history_77_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_78 (CONSTRAINT change_history_78_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_79 (CONSTRAINT change_history_79_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_80 (CONSTRAINT change_history_80_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_81 (CONSTRAINT change_history_81_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_82 (CONSTRAINT change_history_82_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_83 (CONSTRAINT change_history_83_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_84 (CONSTRAINT change_history_84_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_85 (CONSTRAINT change_history_85_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_86 (CONSTRAINT change_history_86_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_87 (CONSTRAINT change_history_87_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_88 (CONSTRAINT change_history_88_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_89 (CONSTRAINT change_history_89_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_90 (CONSTRAINT change_history_90_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_91 (CONSTRAINT change_history_91_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_92 (CONSTRAINT change_history_92_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_93 (CONSTRAINT change_history_93_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_94 (CONSTRAINT change_history_94_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_95 (CONSTRAINT change_history_95_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_96 (CONSTRAINT change_history_96_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_97 (CONSTRAINT change_history_97_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_98 (CONSTRAINT change_history_98_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
CREATE TABLE IF NOT EXISTS change_history_99 (CONSTRAINT change_history_99_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
