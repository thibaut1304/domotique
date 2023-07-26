#!/bin/bash

source .env

cp $(pwd)/conf/input.conf $(pwd)/conf/nginx.conf

# Read from .env file
while read -r line
do
    key=$(echo "$line" | cut -d '=' -f 1)
    value=$(echo "$line" | cut -d '=' -f 2)

	if [ $OS = "mac" ]; then
		EXEC="sed -i '' 's/\${${key}}/${value}/g' $(pwd)/conf/nginx.conf"
	else
		EXEC="sed -i 's/\${${key}}/${value}/g' $(pwd)/conf/nginx.conf"
	fi

    # Replace in the config file
   COMMAND=$(echo $EXEC | sed "s/\${key}/${key}/g" | sed "s/\${value}/${value}/g")
   eval $COMMAND
done < .env
