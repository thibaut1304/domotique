#!/bin/sh

source .env

docker build --build-arg USERNAME=$USERNAME --build-arg PASSWORD=$PASSWORD -t mosquitto .

docker run -d --restart unless-stopped -p 1884:1884 --name=mosquitto mosquitto
