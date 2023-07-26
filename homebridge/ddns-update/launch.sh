#!/bin/sh

source .env

if [ -z "$1" ]
then
	echo "1. Modifier config.json et lancer le container"
	echo "2. Revserse config.json et surpimer le container"
	read -p "Choisissez une option (1 ou 2): " option
else
	option=$1
fi

case $option in
1)
	sh $(pwd)/conf/startup.sh
	docker build --no-cache -t $IMAGE_NAME .
	docker run -d --name=$CONTAINER_NAME -p 8000:8000 $IMAGE_NAME
	docker ps | grep $CONTAINER_NAME
	sh $(pwd)/conf/startup.sh reverse
	;;
2)
	docker rm -f $CONTAINER_NAME
	docker rmi $IMAGE_NAME
	;;
*)
	echo "Option non valide, choisissez 1 ou 2."
	;;
esac
