FROM alpine:latest

RUN apk upgrade --no-cache \
    && apk add --no-cache aria2 tzdata \
    && mkdir -p \
        /etc/aria2 \
        /etc/aria2_default \
        /usr/share/aria2 \
    && wget --no-check-certificate -O /etc/aria2_default/aria2.conf https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/aria2.conf \
    && wget --no-check-certificate -O /etc/aria2_default/Complete https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/Complete \
    && wget --no-check-certificate -O /usr/bin/CMD-Shell https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/CMD-Shell \
    && chmod +x /etc/aria2_default/Complete \
    && chmod +x /usr/bin/CMD-Shell

VOLUME ["/usr/share/aria2", "/etc/aria2"]
EXPOSE 6800 6882/udp 51414
ENV SECRET="" TIMEZONE=""

CMD ["CMD-Shell"]
