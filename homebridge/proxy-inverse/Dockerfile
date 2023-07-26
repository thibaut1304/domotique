FROM alpine:latest

RUN apk add --no-cache certbot bash dcron nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /run/nginx

COPY script/renew_cert-clear.sh /etc/
RUN chmod +x /etc/renew_cert-clear.sh \
    && echo "0 12 * * * /etc/renew_cert-clear.sh" | crontab -

CMD /etc/renew_cert-clear.sh && crond -b; nginx -g 'daemon off;'
