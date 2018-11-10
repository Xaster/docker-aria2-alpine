FROM alpine:latest

RUN apk upgrade --no-cache \
    && apk add --no-cache aria2 tzdata \
    && mkdir -p /aria2/conf /aria2/downloads \
    && wget --no-check-certificate -O /aria2/Complete.sh.default https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/Complete.sh \
    && wget --no-check-certificate -O /aria2/aria2.conf.default https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/aria2.conf \
    && wget --no-check-certificate -O /aria2/Run.sh https://raw.githubusercontent.com/Xaster/docker-aria2-alpine/master/Run.sh \
    && chmod +x /aria2/Run.sh

VOLUME ["/aria2/downloads", "/aria2/conf"]
EXPOSE 6800 6882/udp 51414
ENV SECRET="" TIMEZONE=""

CMD ["/aria2/Run.sh"]
