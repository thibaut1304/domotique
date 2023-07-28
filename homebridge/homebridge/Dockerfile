FROM oznu/homebridge

RUN apt update -y

RUN apt install -y cron git vim openssh-client

RUN git config --global user.email "thibaut.husser@free.fr"
RUN git config --global user.name "thibaut1304"

ENV GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

COPY script/ /script
RUN chmod +x /script/backup.sh

COPY conf/id_rsa /root/.ssh/
COPY conf/id_rsa.pub /root/.ssh/
RUN chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/id_rsa && \
    chmod 644 /root/.ssh/id_rsa.pub

RUN git clone git@github.com:thibaut1304/backup-homebridge.git /root/backup-homebridge

# Pour systemd non possible
# COPY conf/cron.service /etc/systemd/system/cron.service

RUN (crontab -l ; echo "*/30 * * * * /script/backup.sh") | crontab -

CMD service cron start
