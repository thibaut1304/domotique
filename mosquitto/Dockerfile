FROM alpine:latest

RUN apk add --no-cache mosquitto

RUN apk update \
    && apk add --no-cache \
        mosquitto \
        mosquitto-clients

# A supprimer car volume fais planter container sur synology
# VOLUME ["/mosquitto/config", "/mosquitto/data", "/mosquitto/log"]

RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log
RUN chown -R mosquitto:mosquitto /mosquitto

RUN mkdir -p /var/run/mosquitto && chown -R mosquitto:mosquitto /var/run/mosquitto


ARG USERNAME
ARG PASSWORD

ENV USERNAME=$USERNAME
ENV PASSWORD=$PASSWORD

COPY script/gen_passwd.sh /gen_passwd.sh
RUN chmod +x /gen_passwd.sh && \
    /gen_passwd.sh && \
    mv /gen_passwd.sh /usr/local/bin/


COPY conf/mosquitto.conf /mosquitto/config/

WORKDIR /mosquitto

EXPOSE 1884

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
