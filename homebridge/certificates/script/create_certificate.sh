#!/bin/sh

CONFIG_FILE="/etc/sites_config.json"
CERTS_DIR="/letsencrypt/certs"

if [ -f "$CONFIG_FILE" ]; then
	for site in $(cat "$CONFIG_FILE" | jq -c '.[]'); do
		host=$(echo "$site" | jq -r '.host')
		email=$(echo "$site" | jq -r '.email')
		http_port=$(echo "$site" | jq -r '.http_port')
		https_port=$(echo "$site" | jq -r '.https_port')

		cert_dir="$CERTS_DIR/$host"
		certbot_cmd="certbot certonly -v --staging --standalone --non-interactive --agree-tos --email $email -d $host --config-dir $cert_dir --work-dir $cert_dir"

		if [ ! -d "$cert_dir/fullchain.pem" ]; then
			echo "Creating certificate for $host"
			$certbot_cmd
		else
			if [ "$(( ( $(date +%s) - $(stat -c %Y "$cert_dir/fullchain.pem") ) / 60 / 60 / 24 ))" -ge 60 ]; then
				echo "Renewing certificate for $host"
				$certbot_cmd --force-renewal
			else
				echo "Existing certificate found for $host and not old enough for renewal, skipping certificate request"
			fi
		fi
	done
else
	echo "ERROR: Configuration file not found ($CONFIG_FILE)"
	exit 1
fi


