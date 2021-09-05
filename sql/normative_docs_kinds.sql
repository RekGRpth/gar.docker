CREATE TABLE gar.normative_docs_kinds (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(500) NOT NULL
);
COMMENT ON TABLE gar.normative_docs_kinds IS 'Сведения по видам нормативных документов';
COMMENT ON COLUMN gar.normative_docs_kinds.id IS 'Идентификатор записи';
COMMENT ON COLUMN gar.normative_docs_kinds.name IS 'Наименование';

