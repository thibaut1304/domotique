#!/bin/sh

cd "$(dirname "$0")"

echo "Add reverse to cmd for reverse"

username=$(jq -r .username secrets.json)
password=$(jq -r .password secrets.json)
token=$(jq -r .token secrets.json)

if [ "$1" = "reverse" ]; then
    sed -i "" "s/$username/USERNAME/g" data/config.json
    sed -i "" "s/$password/PASSWORD/g" data/config.json
    sed -i "" "s/$token/TOKEN/g" data/config.json
else
    sed -i "" "s/USERNAME/$username/g" data/config.json
    sed -i "" "s/PASSWORD/$password/g" data/config.json
    sed -i "" "s/TOKEN/$token/g" data/config.json
fi
