#!/bin/bash

. ./script/start/functions.sh

ERROR=false
BUILD_VOLUME_HOST=false
BUILD_VOLUME_CONTAINER=false

echo "$COLOR_YELLOW""Check your env file ..."$COLOR_RESET""

###### DNS ######
DNS=$(echo "$DNS" | tr '[:upper:]' '[:lower:]')

if [[ "$DNS" == "false" || -z "$DNS" ]] ; then
	print_color "DNS" "false"
elif [[ "$DNS" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
	print_color "DNS" "$DNS"
	docker_command_run="${docker_command_run} -e DNS=${DNS}"
else
    print_color "DNS" "ERROR"
fi
###### END DNS ######

###### CERTIFICATE ######
CERTIFICATE=$(echo "$CERTIFICATE" | tr '[:upper:]' '[:lower:]')
if [[ "$CERTIFICATE" == "false" || "$CERTIFICATE" == "true" || -z "$CERTIFICATE" ]] ; then
	if [[ -z "$CERTIFICATE" ]] ; then
		CERTIFICATE=false
	fi
	print_color "CERTIFICATE" "$CERTIFICATE"
	docker_command_run="${docker_command_run} -e CERTIFICATE=${CERTIFICATE}"
else
    print_color "CERTIFICATE" "ERROR"
	docker_command_run="${docker_command_run} -e CERTIFICATE=false"
fi
###### END CERTIFICATE ######

###### NAME ######
if [[ $CONTAINER_NAME =~ ^[a-zA-Z0-9][a-zA-Z0-9_.-]{1,}$ ]] ; then
	print_color "CONTAINER_NAME" "$CONTAINER_NAME"
	docker_command_run="${docker_command_run} --name=$CONTAINER_NAME"
else
	ERROR=true
	print_color "CONTAINER_NAME" "ERROR"
fi

if [[ $IMAGE_NAME =~ ^[a-z0-9]+([._-][a-z0-9]+)*(:[a-zA-Z0-9_.-]*)?(/[a-z0-9]+([._-][a-z0-9]+)*(:[a-zA-Z0-9_.-]*)?)*$ && ${#IMAGE_NAME} -le 255 ]] ; then
	print_color "IMAGE_NAME" "$IMAGE_NAME"
else
	print_color "IMAGE_NAME" "ERROR"
	ERROR=true
fi
###### END NAME ######

###### VOLUME ######
TMP_VOLUME_HOST=$(echo "$VOLUME_HOST/")
PWD_PATH=$(echo "$(pwd)/")

TMP_VOLUME_HOST=${TMP_VOLUME_HOST//\/\///}
PWD_PATH=${PWD_PATH//\/\///}

DIRECTORY_PATH=$(dirname "$VOLUME_HOST")

if [ -f "$VOLUME_HOST" ] ; then
    print_color "VOLUME_HOST" "ERROR" "No specify file just directory"
	ERROR=true
elif [ ! -d "$DIRECTORY_PATH" ] ; then
    print_color "VOLUME_HOST" "ERROR" "The directory does not exist"
	ERROR=true
elif [ "$TMP_VOLUME_HOST" == "$PWD_PATH" ] ; then
	print_color "VOLUME_HOST" "$VOLUME_HOST" "Warning it's the same as your working directory"
	BUILD_VOLUME_HOST=true
elif [ -n "$VOLUME_HOST" ] ; then
	BUILD_VOLUME_HOST=true
fi

if [ -n "$VOLUME_CONTAINER" ] && [ "${VOLUME_CONTAINER:0:1}" != "/" ]; then
    VOLUME_CONTAINER="/$VOLUME_CONTAINER"
fi
if echo "$VOLUME_CONTAINER" | grep -q "\.\."; then
	print_color "VOLUME_CONTAINER" "ERROR" "Cannot contain '..'"
	ERROR=true
elif [ "$VOLUME_CONTAINER" != "/" ] && [ -n "$VOLUME_CONTAINER" ] ; then
	BUILD_VOLUME_CONTAINER=true
fi

OS=$(uname)
if [ "$OS" = "Darwin" ]; then
    sed -i '' -e "s|^VOLUME_CONTAINER=.*|VOLUME_CONTAINER=$VOLUME_CONTAINER|" .env
else
    sed -i "s|^VOLUME_CONTAINER=.*|VOLUME_CONTAINER=$VOLUME_CONTAINER|" .env
fi

if [[ "$ERROR" == false && "$BUILD_VOLUME_CONTAINER" == true && "$BUILD_VOLUME_HOST" == true ]] ; then
	print_color "VOLUME_HOST" "$VOLUME_HOST"
	print_color "VOLUME_CONTAINER" "$VOLUME_CONTAINER"
	docker_command_run="${docker_command_run} -v $VOLUME_HOST:$VOLUME_CONTAINER"
fi
###### END VOLUME ######

