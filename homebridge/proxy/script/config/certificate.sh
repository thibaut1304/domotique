#!/bin/sh

cd "$(dirname "$0")"

JSON_FILE="config.json"

jq -c '.[]' $JSON_FILE | while read i; do
	HOST=$(echo $i | jq -r '.host')
	EMAIL=$(echo $i | jq -r '.email')

	if [ "${CERTIFICATE}" = "true" ]; then

		if [ ! -f "/etc/letsencrypt/live/${HOST}/fullchain.pem" ]; then
			certbot certonly --staging --standalone --non-interactive --agree-tos --email ${EMAIL} -d ${HOST}
		else
			echo "Existing certificate for ${HOST} found, skipping certificate request"
		fi
		certbot renew --quiet

		TARGET_DIR="/${VOLUME_CONTAINER}/certs/${HOST}"
		PREFIX=2
		while [ -d "$TARGET_DIR" ]; do
			TARGET_DIR="/${VOLUME_CONTAINER}/certs/${PREFIX}-${HOST}"
			PREFIX=$((PREFIX + 1))
		done
		mkdir -p $TARGET_DIR
		cp -r /etc/letsencrypt/live/${HOST} $TARGET_DIR
	else
		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=92/L=Clichy/O=42/CN=${HOST}" -keyout /etc/nginx/ssl/${HOST}.key -out /etc/nginx/ssl/${HOST}.crt

		TARGET_DIR="/${VOLUME_CONTAINER}/certs/${HOST}"
		PREFIX=2
		while [ -d "$TARGET_DIR" ]; do
			TARGET_DIR="/${VOLUME_CONTAINER}/certs/${PREFIX}-${HOST}"
			PREFIX=$((PREFIX + 1))
		done
		mkdir -p $TARGET_DIR
		cp /etc/nginx/ssl/${HOST}.key $TARGET_DIR
		cp /etc/nginx/ssl/${HOST}.crt $TARGET_DIR
	fi
done

nginx -s reload
