#!/bin/bash

# Commande MACOS
# sed -i "" "s/$username/USERNAME_MQTT/g" config.json

# Commande LINUX
# sed -i "s/$username/USERNAME_MQTT/g" config.json

# Load secrets
username=$(jq -r .username secrets.json)
password=$(jq -r .password secrets.json)


if [ "$1" = "reverse" ]; then
    # If the argument is "reverse", then we replace the values in config.json with the placeholders and delete the backup.
    sed -i "" "s/$username/USERNAME_MQTT/g" config.json
    sed -i "" "s/$password/PASSWORD_MQTT/g" config.json
    rm config.json.bak
else
    # If the argument is not "reverse", then we replace the placeholders in config.json with the values from secrets.json.
    sed -i ".bak" "s/USERNAME_MQTT/$username/g" config.json
    sed -i "" "s/PASSWORD_MQTT/$password/g" config.json
fi
