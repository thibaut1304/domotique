FROM alpine:latest

RUN apk add --no-cache certbot bash dcron jq

COPY conf/sites_config.json /etc/
COPY script/create_certificate.sh /etc/
COPY script/launch.sh /etc/

RUN chmod +x /etc/launch.sh

RUN chmod +x /etc/create_certificate.sh \
    && echo "0 0 */60 * * /etc/create_certificate.sh" | crontab -

CMD ["/etc/launch.sh"]
