CREATE TABLE change_history (
  changeid BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  adrobjectid UUID NOT NULL,
  opertypeid INT NOT NULL,
  ndocid BIGINT,
  changedate DATE NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE change_history IS 'Сведения по истории изменений';
COMMENT ON COLUMN change_history.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN change_history.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN change_history.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN change_history.opertypeid IS 'Тип операции';
COMMENT ON COLUMN change_history.ndocid IS 'ID документа';
COMMENT ON COLUMN change_history.changedate IS 'Дата изменения';

CREATE TABLE change_history_01 PARTITION OF change_history FOR VALUES IN (01);
CREATE TABLE change_history_02 PARTITION OF change_history FOR VALUES IN (02);
CREATE TABLE change_history_03 PARTITION OF change_history FOR VALUES IN (03);
CREATE TABLE change_history_04 PARTITION OF change_history FOR VALUES IN (04);
CREATE TABLE change_history_05 PARTITION OF change_history FOR VALUES IN (05);
CREATE TABLE change_history_06 PARTITION OF change_history FOR VALUES IN (06);
CREATE TABLE change_history_07 PARTITION OF change_history FOR VALUES IN (07);
CREATE TABLE change_history_08 PARTITION OF change_history FOR VALUES IN (08);
CREATE TABLE change_history_09 PARTITION OF change_history FOR VALUES IN (09);
CREATE TABLE change_history_10 PARTITION OF change_history FOR VALUES IN (10);
CREATE TABLE change_history_11 PARTITION OF change_history FOR VALUES IN (11);
CREATE TABLE change_history_12 PARTITION OF change_history FOR VALUES IN (12);
CREATE TABLE change_history_13 PARTITION OF change_history FOR VALUES IN (13);
CREATE TABLE change_history_14 PARTITION OF change_history FOR VALUES IN (14);
CREATE TABLE change_history_15 PARTITION OF change_history FOR VALUES IN (15);
CREATE TABLE change_history_16 PARTITION OF change_history FOR VALUES IN (16);
CREATE TABLE change_history_17 PARTITION OF change_history FOR VALUES IN (17);
CREATE TABLE change_history_18 PARTITION OF change_history FOR VALUES IN (18);
CREATE TABLE change_history_19 PARTITION OF change_history FOR VALUES IN (19);
CREATE TABLE change_history_20 PARTITION OF change_history FOR VALUES IN (20);
CREATE TABLE change_history_21 PARTITION OF change_history FOR VALUES IN (21);
CREATE TABLE change_history_22 PARTITION OF change_history FOR VALUES IN (22);
CREATE TABLE change_history_23 PARTITION OF change_history FOR VALUES IN (23);
CREATE TABLE change_history_24 PARTITION OF change_history FOR VALUES IN (24);
CREATE TABLE change_history_25 PARTITION OF change_history FOR VALUES IN (25);
CREATE TABLE change_history_26 PARTITION OF change_history FOR VALUES IN (26);
CREATE TABLE change_history_27 PARTITION OF change_history FOR VALUES IN (27);
CREATE TABLE change_history_28 PARTITION OF change_history FOR VALUES IN (28);
CREATE TABLE change_history_29 PARTITION OF change_history FOR VALUES IN (29);
CREATE TABLE change_history_30 PARTITION OF change_history FOR VALUES IN (30);
CREATE TABLE change_history_31 PARTITION OF change_history FOR VALUES IN (31);
CREATE TABLE change_history_32 PARTITION OF change_history FOR VALUES IN (32);
CREATE TABLE change_history_33 PARTITION OF change_history FOR VALUES IN (33);
CREATE TABLE change_history_34 PARTITION OF change_history FOR VALUES IN (34);
CREATE TABLE change_history_35 PARTITION OF change_history FOR VALUES IN (35);
CREATE TABLE change_history_36 PARTITION OF change_history FOR VALUES IN (36);
CREATE TABLE change_history_37 PARTITION OF change_history FOR VALUES IN (37);
CREATE TABLE change_history_38 PARTITION OF change_history FOR VALUES IN (38);
CREATE TABLE change_history_39 PARTITION OF change_history FOR VALUES IN (39);
CREATE TABLE change_history_40 PARTITION OF change_history FOR VALUES IN (40);
CREATE TABLE change_history_41 PARTITION OF change_history FOR VALUES IN (41);
CREATE TABLE change_history_42 PARTITION OF change_history FOR VALUES IN (42);
CREATE TABLE change_history_43 PARTITION OF change_history FOR VALUES IN (43);
CREATE TABLE change_history_44 PARTITION OF change_history FOR VALUES IN (44);
CREATE TABLE change_history_45 PARTITION OF change_history FOR VALUES IN (45);
CREATE TABLE change_history_46 PARTITION OF change_history FOR VALUES IN (46);
CREATE TABLE change_history_47 PARTITION OF change_history FOR VALUES IN (47);
CREATE TABLE change_history_48 PARTITION OF change_history FOR VALUES IN (48);
CREATE TABLE change_history_49 PARTITION OF change_history FOR VALUES IN (49);
CREATE TABLE change_history_50 PARTITION OF change_history FOR VALUES IN (50);
CREATE TABLE change_history_51 PARTITION OF change_history FOR VALUES IN (51);
CREATE TABLE change_history_52 PARTITION OF change_history FOR VALUES IN (52);
CREATE TABLE change_history_53 PARTITION OF change_history FOR VALUES IN (53);
CREATE TABLE change_history_54 PARTITION OF change_history FOR VALUES IN (54);
CREATE TABLE change_history_55 PARTITION OF change_history FOR VALUES IN (55);
CREATE TABLE change_history_56 PARTITION OF change_history FOR VALUES IN (56);
CREATE TABLE change_history_57 PARTITION OF change_history FOR VALUES IN (57);
CREATE TABLE change_history_58 PARTITION OF change_history FOR VALUES IN (58);
CREATE TABLE change_history_59 PARTITION OF change_history FOR VALUES IN (59);
CREATE TABLE change_history_60 PARTITION OF change_history FOR VALUES IN (60);
CREATE TABLE change_history_61 PARTITION OF change_history FOR VALUES IN (61);
CREATE TABLE change_history_62 PARTITION OF change_history FOR VALUES IN (62);
CREATE TABLE change_history_63 PARTITION OF change_history FOR VALUES IN (63);
CREATE TABLE change_history_64 PARTITION OF change_history FOR VALUES IN (64);
CREATE TABLE change_history_65 PARTITION OF change_history FOR VALUES IN (65);
CREATE TABLE change_history_66 PARTITION OF change_history FOR VALUES IN (66);
CREATE TABLE change_history_67 PARTITION OF change_history FOR VALUES IN (67);
CREATE TABLE change_history_68 PARTITION OF change_history FOR VALUES IN (68);
CREATE TABLE change_history_69 PARTITION OF change_history FOR VALUES IN (69);
CREATE TABLE change_history_70 PARTITION OF change_history FOR VALUES IN (70);
CREATE TABLE change_history_71 PARTITION OF change_history FOR VALUES IN (71);
CREATE TABLE change_history_72 PARTITION OF change_history FOR VALUES IN (72);
CREATE TABLE change_history_73 PARTITION OF change_history FOR VALUES IN (73);
CREATE TABLE change_history_74 PARTITION OF change_history FOR VALUES IN (74);
CREATE TABLE change_history_75 PARTITION OF change_history FOR VALUES IN (75);
CREATE TABLE change_history_76 PARTITION OF change_history FOR VALUES IN (76);
CREATE TABLE change_history_77 PARTITION OF change_history FOR VALUES IN (77);
CREATE TABLE change_history_78 PARTITION OF change_history FOR VALUES IN (78);
CREATE TABLE change_history_79 PARTITION OF change_history FOR VALUES IN (79);
CREATE TABLE change_history_80 PARTITION OF change_history FOR VALUES IN (80);
CREATE TABLE change_history_81 PARTITION OF change_history FOR VALUES IN (81);
CREATE TABLE change_history_82 PARTITION OF change_history FOR VALUES IN (82);
CREATE TABLE change_history_83 PARTITION OF change_history FOR VALUES IN (83);
CREATE TABLE change_history_84 PARTITION OF change_history FOR VALUES IN (84);
CREATE TABLE change_history_85 PARTITION OF change_history FOR VALUES IN (85);
CREATE TABLE change_history_86 PARTITION OF change_history FOR VALUES IN (86);
CREATE TABLE change_history_87 PARTITION OF change_history FOR VALUES IN (87);
CREATE TABLE change_history_88 PARTITION OF change_history FOR VALUES IN (88);
CREATE TABLE change_history_89 PARTITION OF change_history FOR VALUES IN (89);
CREATE TABLE change_history_90 PARTITION OF change_history FOR VALUES IN (90);
CREATE TABLE change_history_91 PARTITION OF change_history FOR VALUES IN (91);
CREATE TABLE change_history_92 PARTITION OF change_history FOR VALUES IN (92);
CREATE TABLE change_history_93 PARTITION OF change_history FOR VALUES IN (93);
CREATE TABLE change_history_94 PARTITION OF change_history FOR VALUES IN (94);
CREATE TABLE change_history_95 PARTITION OF change_history FOR VALUES IN (95);
CREATE TABLE change_history_96 PARTITION OF change_history FOR VALUES IN (96);
CREATE TABLE change_history_97 PARTITION OF change_history FOR VALUES IN (97);
CREATE TABLE change_history_98 PARTITION OF change_history FOR VALUES IN (98);
CREATE TABLE change_history_99 PARTITION OF change_history FOR VALUES IN (99);
