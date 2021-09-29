CREATE TABLE IF NOT EXISTS change_history (
    changeid BIGINT NOT NULL,
    objectid BIGINT NOT NULL,
    adrobjectid UUID NOT NULL,
    opertypeid INT NOT NULL,
    ndocid BIGINT,
    changedate DATE NOT NULL,
    region smallint NOT NULL,
    CONSTRAINT change_history_pkey PRIMARY KEY (changeid, region)
) PARTITION BY LIST (region);
COMMENT ON TABLE change_history IS 'Сведения по истории изменений';
COMMENT ON COLUMN change_history.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN change_history.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN change_history.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN change_history.opertypeid IS 'Тип операции';
COMMENT ON COLUMN change_history.ndocid IS 'ID документа';
COMMENT ON COLUMN change_history.changedate IS 'Дата изменения';
