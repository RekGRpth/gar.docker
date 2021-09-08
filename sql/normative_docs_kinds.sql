CREATE TABLE IF NOT EXISTS normative_docs_kinds (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(500) NOT NULL
);
COMMENT ON TABLE normative_docs_kinds IS 'Сведения по видам нормативных документов';
COMMENT ON COLUMN normative_docs_kinds.id IS 'Идентификатор записи';
COMMENT ON COLUMN normative_docs_kinds.name IS 'Наименование';
