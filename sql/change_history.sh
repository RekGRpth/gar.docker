#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE SCHEMA IF NOT EXISTS "${DIR}";
CREATE TABLE IF NOT EXISTS "${DIR}".change_history (CONSTRAINT "${DIR}".change_history_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
COMMENT ON TABLE "${DIR}".change_history IS 'Сведения по истории изменений';
COMMENT ON COLUMN "${DIR}".change_history.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN "${DIR}".change_history.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN "${DIR}".change_history.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN "${DIR}".change_history.opertypeid IS 'Тип операции';
COMMENT ON COLUMN "${DIR}".change_history.ndocid IS 'ID документа';
COMMENT ON COLUMN "${DIR}".change_history.changedate IS 'Дата изменения';
EOF
