#!/bin/bash

source .env

cp $(pwd)/script/renew_cert.sh $(pwd)/script/renew_cert-clear.sh

# Read from .env file
while read -r line
do
    key=$(echo "$line" | cut -d '=' -f 1)
    value=$(echo "$line" | cut -d '=' -f 2)

	if [ $OS = "mac" ]; then
		EXEC="sed -i '' 's/\${${key}}/${value}/g' $(pwd)/script/renew_cert-clear.sh"
	else
		EXEC="sed -i 's/\${${key}}/${value}/g' $(pwd)/script/renew_cert-clear.sh"
	fi

    # Replace in the config file
   COMMAND=$(echo $EXEC | sed "s/\${key}/${key}/g" | sed "s/\${value}/${value}/g")
   eval $COMMAND
done < .env
