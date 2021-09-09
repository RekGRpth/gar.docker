#!/bin/sh -eux

DIR="$1"
exec psql --no-password --variable=ON_ERROR_STOP=1 <<EOF
CREATE TABLE IF NOT EXISTS change_history_$DIF (CONSTRAINT change_history_${DIF}_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
COMMENT ON TABLE change_history_$DIF IS 'Сведения по истории изменений';
COMMENT ON COLUMN change_history_$DIF.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN change_history_$DIF.objectid IS 'Уникальный ID объекта';
COMMENT ON COLUMN change_history_$DIF.adrobjectid IS 'Уникальный ID изменившей транзакции (GUID)';
COMMENT ON COLUMN change_history_$DIF.opertypeid IS 'Тип операции';
COMMENT ON COLUMN change_history_$DIF.ndocid IS 'ID документа';
COMMENT ON COLUMN change_history_$DIF.changedate IS 'Дата изменения';
EOF
