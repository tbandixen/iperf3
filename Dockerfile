FROM alpine:latest

RUN apk add --no-cache -U iperf3 && \
    rm -rf /var/cache/apk/* \
    /tmp/* \
    /var/tmp/*

RUN echo "5 * * * * iperf3 -c speedtest.init7.net" | crontab -

ENTRYPOINT crond -f
