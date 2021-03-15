FROM alpine:latest

RUN apk add --no-cache -U iperf3 && \
    rm -rf /var/cache/apk/* \
    /tmp/* \
    /var/tmp/*

ENTRYPOINT ["iperf3"]
CMD ["-c", "speedtest.init7.net"]
