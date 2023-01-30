#!/bin/bash

# Use for retrieving and compiling certain Kaitai formats:
#
# ./scripts/update_struct.sh filesystem/mbr_partition_table
# ./scripts/update_struct.sh filesystem/gpt_partition_table

COMMIT="master"
BASE_URL="https://raw.githubusercontent.com/kaitai-io/kaitai_struct_formats/$COMMIT/"
STRUCT="$1"

if [[ -z "$STRUCT" ]]; then
  echo "Usage: $0 name-of-kaitai-struct"
  exit 64
fi

mkdir --parents $(dirname src/$STRUCT) 2&> /dev/null
curl --location-trusted "$BASE_URL/$STRUCT.ksy" --output src/$STRUCT.ksy --silent

kaitai-struct-compiler --target ruby --outdir $(dirname src/$STRUCT) src/$STRUCT.ksy
