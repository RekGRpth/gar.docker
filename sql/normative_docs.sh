#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".normative_docs (CONSTRAINT "${DIR}".normative_docs_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
COMMENT ON TABLE "${DIR}".normative_docs IS 'Сведения о нормативном документе, являющемся основанием присвоения адресному элементу наименования';
COMMENT ON COLUMN "${DIR}".normative_docs.id IS 'Уникальный идентификатор документа';
COMMENT ON COLUMN "${DIR}".normative_docs.name IS 'Наименование документа';
COMMENT ON COLUMN "${DIR}".normative_docs.date IS 'Дата документа';
COMMENT ON COLUMN "${DIR}".normative_docs.number IS 'Номер документа';
COMMENT ON COLUMN "${DIR}".normative_docs.type IS 'Тип документа';
COMMENT ON COLUMN "${DIR}".normative_docs.kind IS 'Вид документа';
COMMENT ON COLUMN "${DIR}".normative_docs.updatedate IS 'Дата обновления';
COMMENT ON COLUMN "${DIR}".normative_docs.orgname IS 'Наименование органа создвшего нормативный документ';
COMMENT ON COLUMN "${DIR}".normative_docs.regnum IS 'Номер государственной регистрации';
COMMENT ON COLUMN "${DIR}".normative_docs.regdate IS 'Дата государственной регистрации';
COMMENT ON COLUMN "${DIR}".normative_docs.accdate IS 'Дата вступления в силу нормативного документа';
COMMENT ON COLUMN "${DIR}".normative_docs.comment IS 'Комментарий';
CREATE INDEX IF NOT EXISTS "${DIR}".normative_docs_type_idx ON "${DIR}".normative_docs USING btree (type);
CREATE INDEX IF NOT EXISTS "${DIR}".normative_docs_kind_idx ON "${DIR}".normative_docs USING btree (kind);
EOF
