#!/bin/sh

echo "\n$COLOR_YELLOW""Get your port http and https ...""$COLOR_RESET"

HTTP_PORTS=""
HTTPS_PORTS=""

while IFS= read -r i; do
	HTTP_PORT=$(echo $i | jq '.http_port')
	HTTPS_PORT=$(echo $i | jq '.https_port')

    if [ "$HTTP_PORT" != "null" ]; then
		docker_command_run="${docker_command_run} -p ${HTTP_PORT}:${HTTP_PORT}"
        if [ -z "$HTTP_PORTS" ]; then
            HTTP_PORTS="${HTTP_PORT}"
        else
            HTTP_PORTS="${HTTP_PORTS}, ${HTTP_PORT}"
        fi
    fi

    if [ "$HTTPS_PORT" != "null" ]; then
		docker_command_run="${docker_command_run} -p ${HTTPS_PORT}:${HTTPS_PORT}"
        if [ -z "$HTTPS_PORTS" ]; then
            HTTPS_PORTS="${HTTPS_PORT}"
        else
            HTTPS_PORTS="${HTTPS_PORTS}, ${HTTPS_PORT}"
        fi
    fi
	# if [ "$HTTP_PORT" != "null" ]; then
	# 	docker_command_run="${docker_command_run} -p ${HTTP_PORT}:${HTTP_PORT}"
	# fi

	# if [ "$HTTPS_PORT" != "null" ]; then
	# 	docker_command_run="${docker_command_run} -p ${HTTPS_PORT}:${HTTPS_PORT}"
	# fi

done <<EOF
$(jq -c '.[]' < $JSON_FILE)
EOF


echo "HTTP  ports: ${HTTP_PORTS}"
echo "HTTPS ports: ${HTTPS_PORTS}"
