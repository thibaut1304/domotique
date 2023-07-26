#!/bin/sh

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
	docker build --no-cache -t ddns-update .
	docker run -d --name=ddns-update -p 8000:8000 ddns-update
	docker ps | grep ddns-update
	sh $(pwd)/conf/startup.sh reverse
	;;
2)
	docker rm -f ddns-update
	docker rmi ddns-update
	;;
*)
	echo "Option non valide, choisissez 1 ou 2."
	;;
esac
