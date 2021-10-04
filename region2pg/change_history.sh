#!/bin/sh

set -eux
REGION="$1"
cat <<EOF
CREATE TABLE IF NOT EXISTS "$REGION".change_history (CONSTRAINT change_history_pkey PRIMARY KEY (changeid)) INHERITS (change_history);
EOF
