#!/bin/sh

echo "Add reverse to cmd for reverse"

password=$(jq -r .password secrets.json)

if [ "$1" = "reverse" ]; then
    sed -i "" "s/$password/PASSWORD/g" config.json
else
    sed -i "" "s/PASSWORD/$password/g" config.json
fi
