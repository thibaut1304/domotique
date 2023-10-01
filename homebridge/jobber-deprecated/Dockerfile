FROM blacklabelops/jobber

COPY config/jobber.yaml /root/.jobber.yaml

COPY config/scripts/hello-world.sh /scripts/hello.sh
RUN chmod +x /scripts/hello.sh

RUN touch /var/log/hello.log

ENTRYPOINT ["/usr/local/bin/jobberd"]
