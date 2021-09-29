CREATE TABLE IF NOT EXISTS normative_docs (
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
    region smallint NOT NULL
) PARTITION BY LIST (region);
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
CREATE INDEX IF NOT EXISTS normative_docs_type_idx ON normative_docs USING btree (type);
CREATE INDEX IF NOT EXISTS normative_docs_kind_idx ON normative_docs USING btree (kind);
