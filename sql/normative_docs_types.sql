CREATE TABLE normative_docs_types (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(500) NOT NULL,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL
);
COMMENT ON TABLE normative_docs_types IS 'Сведения по типам нормативных документов';
COMMENT ON COLUMN normative_docs_types.id IS 'Идентификатор записи';
COMMENT ON COLUMN normative_docs_types.name IS 'Наименование';
COMMENT ON COLUMN normative_docs_types.startdate IS 'Дата начала действия записи';
COMMENT ON COLUMN normative_docs_types.enddate IS 'Дата окончания действия записи';

