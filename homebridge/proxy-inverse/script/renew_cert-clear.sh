#!/bin/sh

if [ ! -f /etc/letsencrypt/live/homebridge-thibaut.ddns.net/fullchain.pem ]; then
    certbot certonly --staging --standalone --non-interactive --agree-tos --email pi.raspberry13@gmail.com -d tt-homebridge.ddns.net
else
    echo "Existing certificate found, skipping certificate request"
fi

certbot renew --quiet

nginx -s reload
