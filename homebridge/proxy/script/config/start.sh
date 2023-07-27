#!/bin/sh

cd "$(dirname "$0")"

if [ -n "$DNS" ]; then
	echo "Add dns : ${DNS} in /etc/resolv.conf"
	echo "nameserver ${DNS}" >> /etc/resolv.conf
fi

echo "Start generete certificates ..."
sh certificate.sh

echo "Start generete nginx.conf ..."
sh nginx.sh

if [ "${CERTIFICATE}" = "true" ]; then
	echo "Launch cron in background ..."
	crond -b
fi

echo "Launch NGINX ..."
exec nginx -g 'daemon off;'
