FROM alpine:latest

RUN apk add --no-cache certbot bash dcron nginx openssl jq bind-tools vim

RUN mkdir -p /copy_files/certs
RUN mkdir -p /run/nginx

COPY config.json /etc/

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=92/L=Clichy/O=42/CN=thibaut1304" -keyout /etc/nginx/ssl/default.key -out /etc/nginx/ssl/default.crt

COPY script/nginx.sh /etc/
RUN chmod +x /etc/nginx.sh

COPY script/certificate.sh /etc/
RUN chmod +x /etc/certificate.sh

COPY script/start.sh /etc/
RUN chmod +x /etc/start.sh

RUN (crontab -l ; echo "0 0 * * * /etc/certificate.sh") | crontab -
RUN (crontab -l ; echo "0 12 * * * /etc/certificate.sh") | crontab -

CMD /etc/start.sh
