#!/bin/bash

# proxy_set_header Host $host; : Cet en-tête est important car de nombreuses applications Web utilisent l'en-tête Host pour déterminer comment traiter une requête. Par exemple, si vous hébergez plusieurs sites sur un seul serveur Web, le serveur Web peut utiliser l'en-tête Host pour déterminer quel site doit traiter la requête. Nginx remplace l'en-tête Host d'origine par la valeur de la variable $host, qui contient le nom d'hôte du serveur.
# proxy_set_header X-Real-IP $remote_addr; : L'en-tête X-Real-IP est souvent utilisé pour passer l'adresse IP du client à l'application cible. Cela est utile lorsque vous voulez que l'application cible connaisse l'adresse IP du client original, même lorsque la requête est relayée par un proxy. Nginx définit cet en-tête à la valeur de la variable $remote_addr, qui contient l'adresse IP du client.

cd "$(dirname "$0")"

JSON_FILE="config.json"

# Default server configuration
# pid /run/nginx/nginx.pid;


############# Test william
# user             www-data;
# worker_processes auto;
# pid              /run/nginx.pid;
#############

DEFAULT_CONFIG="
# user             www-data;
worker_processes auto;
pid              /run/nginx.pid;
events {}

http {
	server {
		listen 80 default_server;
		server_name _;
		return 444;
	}

	server {
		listen 443 ssl default_server;
		server_name _;
		ssl_certificate /etc/nginx/ssl/default.crt;
		ssl_certificate_key /etc/nginx/ssl/default.key;
		return 444;
	}"

echo "$DEFAULT_CONFIG" > /etc/nginx/nginx.conf

jq -c '.[]' $JSON_FILE | while read i; do
	HTTP_PORT=$(echo $i | jq '.http_port')
	HTTPS_PORT=$(echo $i | jq '.https_port')
	HOST=$(echo $i | jq -r '.host')
	IP_ADDRESS=$(echo $i | jq -r '.ip_address')
	INTERNAL_PORT=$(echo $i | jq '.internal_port')
	HTTPS=$(echo $i | jq '.https')

	if [ "${HTTPS}" = true ];then
		HTTPS="https"	
	else
		HTTPS="http"
	fi

	if [ "${CERTIFICATE}" = "true" ]; then
		SSL_CERTIFICATE="/etc/letsencrypt/live/${HOST}/fullchain.pem"
		SSL_CERTIFICATE_KEY="/etc/letsencrypt/live/${HOST}/privkey.pem"
	else
		SSL_CERTIFICATE="/etc/nginx/ssl/${HOST}.crt"
		SSL_CERTIFICATE_KEY="/etc/nginx/ssl/${HOST}.key"
	fi

	CONFIG="
		server {
			listen ${HTTP_PORT};
			server_name ${HOST};

			location / {
				return 301 https://\$host\$request_uri;
			}
		}

		server {
			listen ${HTTPS_PORT} ssl;
			server_name ${HOST};

			ssl_certificate ${SSL_CERTIFICATE};
			ssl_certificate_key ${SSL_CERTIFICATE_KEY};

			location / {
				proxy_pass ${HTTPS}://${IP_ADDRESS}:${INTERNAL_PORT};
				proxy_set_header Host \$host;
				proxy_set_header X-Real-IP \$remote_addr;
			}
		}"

  echo "$CONFIG" >> /etc/nginx/nginx.conf
done
echo "}" >> /etc/nginx/nginx.conf

cp /etc/nginx/nginx.conf /${VOLUME_CONTAINER}
