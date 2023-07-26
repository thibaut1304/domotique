#!/bin/sh


#!/bin/bash

source .env

stop_and_remove_container() {
    docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME
}

if [ -z "$1" ]
then
    echo "1. Creer l'image et Lancer le conteneur"
	echo "2. Supprimer le conteneur"
	echo "3. Supprimer le conteneur et l'image"
    read -p "Choisissez une option (1, 2 ou 3): " option
else
    option=$1
fi
case $option in
1)
	# sh $(pwd)/conf/start.sh
	# touch salut
	# exit 1
	# sh $(pwd)/script/start.sh
	# sh $(pwd)/script/start-2.sh
    docker build --no-cache -t $IMAGE_NAME .
	docker run -d --name $CONTAINER_NAME -v $(pwd)/conf/dnsmasq.conf:/etc/dnsmasq.conf -p 53:53/tcp -p 53:53/udp $IMAGE_NAME
	docker ps | grep $CONTAINER_NAME
    ;;
2)
	stop_and_remove_container
	;;
3)
    stop_and_remove_container && docker rmi $IMAGE_NAME
    ;;
*)
    echo "Option non valide. Choisissez 1, 2 ou 3."
    ;;
esac
