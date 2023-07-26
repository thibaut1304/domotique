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

		mkdir -p /copy_files/certs/${HOST}
		cp -r /etc/letsencrypt/live/${HOST} /copy_files/certs/${HOST}

	else
		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=92/L=Clichy/O=42/CN=${HOST}" -keyout /etc/nginx/ssl/${HOST}.key -out /etc/nginx/ssl/${HOST}.crt
		mkdir -p /copy_files/certs/${HOST}
		cp /etc/nginx/ssl/${HOST}.key /copy_files/certs/${HOST}
		cp /etc/nginx/ssl/${HOST}.crt /copy_files/certs/${HOST}
	fi
done

nginx -s reload
