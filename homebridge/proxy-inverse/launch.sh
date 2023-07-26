#!/bin/bash

source .env

stop_and_remove_container() {
    docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME
}

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
	sh $(pwd)/conf/start.sh
	sh $(pwd)/script/start.sh
    docker build --no-cache -t $IMAGE_NAME .
	docker run --name=$CONTAINER_NAME -d -p $HTTP_PORT:$HTTP_PORT -p $HTTPS_PORT:$HTTPS_PORT $IMAGE_NAME
	docker ps | grep $CONTAINER_NAME
    ;;
2)
	docker run --name=$CONTAINER_NAME -d -p $HTTP_PORT:$HTTP_PORT -p $HTTPS_PORT:$HTTPS_PORT $IMAGE_NAME
	docker ps | grep $CONTAINER_NAME
	;;
3)
    stop_and_remove_container
    ;;
4)
	docker rmi $IMAGE_NAME
	;;
5)
	rm -f $(pwd)/conf/nginx.conf
	rm -f $(pwd)/script/renew_cert-clear.sh
    stop_and_remove_container && docker rmi $IMAGE_NAME
    ;;
*)
    echo "Option non valide. Choisissez 1, 2 ou 3."
    ;;
esac
