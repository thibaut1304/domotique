#!/bin/sh

if [ ! -f /etc/letsencrypt/live/homebridge-thibaut.ddns.net/fullchain.pem ]; then
    certbot certonly --staging --standalone --non-interactive --agree-tos --email ${EMAIL} -d ${HOST}
else
    echo "Existing certificate found, skipping certificate request"
fi

certbot renew --quiet

nginx -s reload
