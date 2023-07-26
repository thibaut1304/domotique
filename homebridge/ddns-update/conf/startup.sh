#!/bin/sh

cd "$(dirname "$0")"

echo "Add reverse to cmd for reverse"

username=$(jq -r .username secrets.json)
password=$(jq -r .password secrets.json)

if [ "$1" = "reverse" ]; then
    sed -i "" "s/$username/USERNAME/g" config.json
    sed -i "" "s/$password/PASSWORD/g" config.json
else
    sed -i "" "s/USERNAME/$username/g" config.json
    sed -i "" "s/PASSWORD/$password/g" config.json
fi
