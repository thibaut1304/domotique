FROM alpine:latest

RUN apk add --no-cache certbot bash dcron openssl vim

# ARG VOLUME_CONTAINER
# RUN mkdir -p ${VOLUME_CONTAINER}/certs

COPY script/config/start.sh /etc/
RUN chmod +x /etc/start.sh

RUN touch /var/log/cron.log

RUN (crontab -l ; echo "*/1 * * * * /etc/start.sh") | crontab -

CMD ["crond", "-f", "-l", "2", "-d", "8"]

