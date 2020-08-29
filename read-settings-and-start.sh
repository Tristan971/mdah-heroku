#!/bin/sh

set -eu

SETTINGS_FILE=$1
echo "Settings file: $SETTINGS_FILE"

echo "Enter secret: "
read -r SECRET

echo "Using secret: $SECRET"

sed -Ei "s/nosenpaithisisoursecret/$SECRET/g" "$SETTINGS_FILE"

echo "Final settings: "
cat "$SETTINGS_FILE"

set -x
java -Dfile-level=off -Dstdout-level=info -jar /mangahome/mangadex_at_home.jar --settings "$SETTINGS_FILE"

