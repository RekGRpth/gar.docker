CREATE TABLE apartments (
  id BIGINT NOT NULL PRIMARY KEY,
  objectid BIGINT NOT NULL,
  objectguid UUID NOT NULL,
  changeid BIGINT NOT NULL,
  number VARCHAR(50) NOT NULL,
  aparttype INT NOT NULL,
  opertypeid BIGINT NOT NULL,
  previd BIGINT,
  nextid BIGINT,
  updatedate DATE NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  isactual SMALLINT NOT NULL,
  isactive SMALLINT NOT NULL,
  dir SMALLINT NOT NULL
) PARTITION BY LIST (dir, 1));
COMMENT ON TABLE apartments IS 'Сведения по помещениям';
COMMENT ON COLUMN apartments.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN apartments.objectid IS 'Глобальный уникальный идентификатор объекта типа INTEGER';
COMMENT ON COLUMN apartments.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN apartments.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN apartments.number IS 'Номер комнаты';
COMMENT ON COLUMN apartments.aparttype IS 'Тип комнаты';
COMMENT ON COLUMN apartments.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN apartments.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN apartments.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN apartments.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN apartments.startdate IS 'Начало действия записи';
COMMENT ON COLUMN apartments.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN apartments.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN apartments.isactive IS 'Признак действующего адресного объекта';

CREATE TABLE apartments_01 PARTITION OF apartments FOR VALUES IN (01);
CREATE TABLE apartments_02 PARTITION OF apartments FOR VALUES IN (02);
CREATE TABLE apartments_03 PARTITION OF apartments FOR VALUES IN (03);
CREATE TABLE apartments_04 PARTITION OF apartments FOR VALUES IN (04);
CREATE TABLE apartments_05 PARTITION OF apartments FOR VALUES IN (05);
CREATE TABLE apartments_06 PARTITION OF apartments FOR VALUES IN (06);
CREATE TABLE apartments_07 PARTITION OF apartments FOR VALUES IN (07);
CREATE TABLE apartments_08 PARTITION OF apartments FOR VALUES IN (08);
CREATE TABLE apartments_09 PARTITION OF apartments FOR VALUES IN (09);
CREATE TABLE apartments_10 PARTITION OF apartments FOR VALUES IN (10);
CREATE TABLE apartments_11 PARTITION OF apartments FOR VALUES IN (11);
CREATE TABLE apartments_12 PARTITION OF apartments FOR VALUES IN (12);
CREATE TABLE apartments_13 PARTITION OF apartments FOR VALUES IN (13);
CREATE TABLE apartments_14 PARTITION OF apartments FOR VALUES IN (14);
CREATE TABLE apartments_15 PARTITION OF apartments FOR VALUES IN (15);
CREATE TABLE apartments_16 PARTITION OF apartments FOR VALUES IN (16);
CREATE TABLE apartments_17 PARTITION OF apartments FOR VALUES IN (17);
CREATE TABLE apartments_18 PARTITION OF apartments FOR VALUES IN (18);
CREATE TABLE apartments_19 PARTITION OF apartments FOR VALUES IN (19);
CREATE TABLE apartments_20 PARTITION OF apartments FOR VALUES IN (20);
CREATE TABLE apartments_21 PARTITION OF apartments FOR VALUES IN (21);
CREATE TABLE apartments_22 PARTITION OF apartments FOR VALUES IN (22);
CREATE TABLE apartments_23 PARTITION OF apartments FOR VALUES IN (23);
CREATE TABLE apartments_24 PARTITION OF apartments FOR VALUES IN (24);
CREATE TABLE apartments_25 PARTITION OF apartments FOR VALUES IN (25);
CREATE TABLE apartments_26 PARTITION OF apartments FOR VALUES IN (26);
CREATE TABLE apartments_27 PARTITION OF apartments FOR VALUES IN (27);
CREATE TABLE apartments_28 PARTITION OF apartments FOR VALUES IN (28);
CREATE TABLE apartments_29 PARTITION OF apartments FOR VALUES IN (29);
CREATE TABLE apartments_30 PARTITION OF apartments FOR VALUES IN (30);
CREATE TABLE apartments_31 PARTITION OF apartments FOR VALUES IN (31);
CREATE TABLE apartments_32 PARTITION OF apartments FOR VALUES IN (32);
CREATE TABLE apartments_33 PARTITION OF apartments FOR VALUES IN (33);
CREATE TABLE apartments_34 PARTITION OF apartments FOR VALUES IN (34);
CREATE TABLE apartments_35 PARTITION OF apartments FOR VALUES IN (35);
CREATE TABLE apartments_36 PARTITION OF apartments FOR VALUES IN (36);
CREATE TABLE apartments_37 PARTITION OF apartments FOR VALUES IN (37);
CREATE TABLE apartments_38 PARTITION OF apartments FOR VALUES IN (38);
CREATE TABLE apartments_39 PARTITION OF apartments FOR VALUES IN (39);
CREATE TABLE apartments_40 PARTITION OF apartments FOR VALUES IN (40);
CREATE TABLE apartments_41 PARTITION OF apartments FOR VALUES IN (41);
CREATE TABLE apartments_42 PARTITION OF apartments FOR VALUES IN (42);
CREATE TABLE apartments_43 PARTITION OF apartments FOR VALUES IN (43);
CREATE TABLE apartments_44 PARTITION OF apartments FOR VALUES IN (44);
CREATE TABLE apartments_45 PARTITION OF apartments FOR VALUES IN (45);
CREATE TABLE apartments_46 PARTITION OF apartments FOR VALUES IN (46);
CREATE TABLE apartments_47 PARTITION OF apartments FOR VALUES IN (47);
CREATE TABLE apartments_48 PARTITION OF apartments FOR VALUES IN (48);
CREATE TABLE apartments_49 PARTITION OF apartments FOR VALUES IN (49);
CREATE TABLE apartments_50 PARTITION OF apartments FOR VALUES IN (50);
CREATE TABLE apartments_51 PARTITION OF apartments FOR VALUES IN (51);
CREATE TABLE apartments_52 PARTITION OF apartments FOR VALUES IN (52);
CREATE TABLE apartments_53 PARTITION OF apartments FOR VALUES IN (53);
CREATE TABLE apartments_54 PARTITION OF apartments FOR VALUES IN (54);
CREATE TABLE apartments_55 PARTITION OF apartments FOR VALUES IN (55);
CREATE TABLE apartments_56 PARTITION OF apartments FOR VALUES IN (56);
CREATE TABLE apartments_57 PARTITION OF apartments FOR VALUES IN (57);
CREATE TABLE apartments_58 PARTITION OF apartments FOR VALUES IN (58);
CREATE TABLE apartments_59 PARTITION OF apartments FOR VALUES IN (59);
CREATE TABLE apartments_60 PARTITION OF apartments FOR VALUES IN (60);
CREATE TABLE apartments_61 PARTITION OF apartments FOR VALUES IN (61);
CREATE TABLE apartments_62 PARTITION OF apartments FOR VALUES IN (62);
CREATE TABLE apartments_63 PARTITION OF apartments FOR VALUES IN (63);
CREATE TABLE apartments_64 PARTITION OF apartments FOR VALUES IN (64);
CREATE TABLE apartments_65 PARTITION OF apartments FOR VALUES IN (65);
CREATE TABLE apartments_66 PARTITION OF apartments FOR VALUES IN (66);
CREATE TABLE apartments_67 PARTITION OF apartments FOR VALUES IN (67);
CREATE TABLE apartments_68 PARTITION OF apartments FOR VALUES IN (68);
CREATE TABLE apartments_69 PARTITION OF apartments FOR VALUES IN (69);
CREATE TABLE apartments_70 PARTITION OF apartments FOR VALUES IN (70);
CREATE TABLE apartments_71 PARTITION OF apartments FOR VALUES IN (71);
CREATE TABLE apartments_72 PARTITION OF apartments FOR VALUES IN (72);
CREATE TABLE apartments_73 PARTITION OF apartments FOR VALUES IN (73);
CREATE TABLE apartments_74 PARTITION OF apartments FOR VALUES IN (74);
CREATE TABLE apartments_75 PARTITION OF apartments FOR VALUES IN (75);
CREATE TABLE apartments_76 PARTITION OF apartments FOR VALUES IN (76);
CREATE TABLE apartments_77 PARTITION OF apartments FOR VALUES IN (77);
CREATE TABLE apartments_78 PARTITION OF apartments FOR VALUES IN (78);
CREATE TABLE apartments_79 PARTITION OF apartments FOR VALUES IN (79);
CREATE TABLE apartments_80 PARTITION OF apartments FOR VALUES IN (80);
CREATE TABLE apartments_81 PARTITION OF apartments FOR VALUES IN (81);
CREATE TABLE apartments_82 PARTITION OF apartments FOR VALUES IN (82);
CREATE TABLE apartments_83 PARTITION OF apartments FOR VALUES IN (83);
CREATE TABLE apartments_84 PARTITION OF apartments FOR VALUES IN (84);
CREATE TABLE apartments_85 PARTITION OF apartments FOR VALUES IN (85);
CREATE TABLE apartments_86 PARTITION OF apartments FOR VALUES IN (86);
CREATE TABLE apartments_87 PARTITION OF apartments FOR VALUES IN (87);
CREATE TABLE apartments_88 PARTITION OF apartments FOR VALUES IN (88);
CREATE TABLE apartments_89 PARTITION OF apartments FOR VALUES IN (89);
CREATE TABLE apartments_90 PARTITION OF apartments FOR VALUES IN (90);
CREATE TABLE apartments_91 PARTITION OF apartments FOR VALUES IN (91);
CREATE TABLE apartments_92 PARTITION OF apartments FOR VALUES IN (92);
CREATE TABLE apartments_93 PARTITION OF apartments FOR VALUES IN (93);
CREATE TABLE apartments_94 PARTITION OF apartments FOR VALUES IN (94);
CREATE TABLE apartments_95 PARTITION OF apartments FOR VALUES IN (95);
CREATE TABLE apartments_96 PARTITION OF apartments FOR VALUES IN (96);
CREATE TABLE apartments_97 PARTITION OF apartments FOR VALUES IN (97);
CREATE TABLE apartments_98 PARTITION OF apartments FOR VALUES IN (98);
CREATE TABLE apartments_99 PARTITION OF apartments FOR VALUES IN (99);
