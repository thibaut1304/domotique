#!/bin/sh

COLOR_RED="\033[31m"
COLOR_YELLOW="\033[33m"
COLOR_RESET="\033[0m"

source .env
JSON_FILE="config.json"
docker_command_run="docker run -d"
docker_command_build="docker build --no-cache -t ${IMAGE_NAME}"

. ./script/start/functions.sh
. ./script/start/check_env_file.sh
. ./script/start/port_config.sh

if [ "$ERROR" = true ] ; then
	printf "$COLOR_RED""Check your .env or config.json""$COLOR_RESET"
	exit 1
fi


if [ "$BUILD_VOLUME_HOST" = "true" ] && [ "$BUILD_VOLUME_CONTAINER" = "true" ]; then
	docker_command_build="${docker_command_build} --build-arg VOLUME_CONTAINER=$(sed -n -e 's/^VOLUME_CONTAINER=//p' .env) ."
	docker_command_run="${docker_command_run} -e VOLUME_CONTAINER=$(sed -n -e 's/^VOLUME_CONTAINER=//p' .env)"
else
	docker_command_build="${docker_command_build} --build-arg VOLUME_CONTAINER=/copy_files ."
	docker_command_run="${docker_command_run} -e VOLUME_CONTAINER=/copy_files"
fi

docker_command_run="${docker_command_run} ${IMAGE_NAME}"

echo

echo $docker_command_build
echo $docker_command_run

echo
if [ -z "$1" ]
then
    echo "1. Creer l'image et Lancer le conteneur"
    echo "2. Lancer le conteneur"
    echo "3. Supprimer le conteneur"
    echo "4. Supprimer l'image"
	echo "5. Supprimer le conteneur et l'image"
    read -p "Choisissez une option (1, 2, 3, 4 ou 5): " option
else
    option=$1
fi
case $option in
1)
	echo "$COLOR_YELLOW""Build your image : $IMAGE_NAME ...""$COLOR_RESET"
	eval $docker_command_build
	echo "$COLOR_YELLOW""Run your container : $CONTAINER_NAME ...""$COLOR_RESET"
	eval $docker_command_run
	docker ps | grep $CONTAINER_NAME
    ;;
2)
	echo "$COLOR_YELLOW""Run your container : $CONTAINER_NAME ...""$COLOR_RESET"
	eval $docker_command_run
	docker ps | grep $CONTAINER_NAME
	;;
3)
    stop_and_remove_container
    ;;
4)
	docker rmi $IMAGE_NAME
	;;
5)
	# rm -rf $(pwd)/copy_files
    stop_and_remove_container
	echo "$COLOR_YELLOW""Delete your image : $IMAGE_NAME ...""$COLOR_RESET"
	docker rmi $IMAGE_NAME
    ;;
*)
    echo "$COLOR_RED""Option non valide. Choisissez 1, 2 3, 4 ou 5."
    ;;
esac
