FROM alpine:latest

RUN apk add --no-cache certbot bash dcron nginx openssl jq bind-tools vim

ARG VOLUME_CONTAINER
RUN mkdir -p ${VOLUME_CONTAINER}/certs

RUN mkdir -p /run/nginx
RUN chown -R nginx:nginx /run/nginx/

COPY config.json /etc/

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=92/L=Clichy/O=42/CN=thibaut1304" -keyout /etc/nginx/ssl/default.key -out /etc/nginx/ssl/default.crt

COPY script/config/nginx.sh /etc/
RUN chmod +x /etc/nginx.sh

COPY script/config/certificate.sh /etc/
RUN chmod +x /etc/certificate.sh

COPY script/config/start.sh /etc/
RUN chmod +x /etc/start.sh

# RUN (crontab -l ; echo "0 0 * * * /etc/certificate.sh") | crontab -
# RUN (crontab -l ; echo "0 12 * * * /etc/certificate.sh") | crontab -

CMD /etc/start.sh
