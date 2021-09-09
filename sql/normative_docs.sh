#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS normative_docs_$DIR (CONSTRAINT normative_docs_${DIR}_pkey PRIMARY KEY (id)) INHERITS (normative_docs);
COMMENT ON TABLE normative_docs_$DIR IS 'Сведения о нормативном документе, являющемся основанием присвоения адресному элементу наименования';
COMMENT ON COLUMN normative_docs_$DIR.id IS 'Уникальный идентификатор документа';
COMMENT ON COLUMN normative_docs_$DIR.name IS 'Наименование документа';
COMMENT ON COLUMN normative_docs_$DIR.date IS 'Дата документа';
COMMENT ON COLUMN normative_docs_$DIR.number IS 'Номер документа';
COMMENT ON COLUMN normative_docs_$DIR.type IS 'Тип документа';
COMMENT ON COLUMN normative_docs_$DIR.kind IS 'Вид документа';
COMMENT ON COLUMN normative_docs_$DIR.updatedate IS 'Дата обновления';
COMMENT ON COLUMN normative_docs_$DIR.orgname IS 'Наименование органа создвшего нормативный документ';
COMMENT ON COLUMN normative_docs_$DIR.regnum IS 'Номер государственной регистрации';
COMMENT ON COLUMN normative_docs_$DIR.regdate IS 'Дата государственной регистрации';
COMMENT ON COLUMN normative_docs_$DIR.accdate IS 'Дата вступления в силу нормативного документа';
COMMENT ON COLUMN normative_docs_$DIR.comment IS 'Комментарий';
CREATE INDEX IF NOT EXISTS normative_docs_${DIR}_type_idx ON normative_docs_$DIR USING btree (type);
CREATE INDEX IF NOT EXISTS normative_docs_${DIR}_kind_idx ON normative_docs_$DIR USING btree (kind);
EOF
