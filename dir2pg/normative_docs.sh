#!/bin/sh

set -eux
DIR="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$DIR".normative_docs (INHERITS normative_docs);
CREATE INDEX IF NOT EXISTS normative_docs_type_idx ON "$DIR".normative_docs USING btree (type);
CREATE INDEX IF NOT EXISTS normative_docs_kind_idx ON "$DIR".normative_docs USING btree (kind);
EOF
