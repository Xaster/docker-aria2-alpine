# docker-aria2-alpine
Docker: Aria2 Without Web UI (Based On Alpine)

# Usage
```
$ docker pull xaster/docker-aria2-alpine

$ docker run -d \
    --name docker-aria2-alpine \
    -v /DOWNLOAD_DIR:/aria2/downloads \
    -v /CONFIG_DIR:/aria2/conf \
    -p 6800:6800 -p 6882:6882/udp -p 51414:51414 \
    -e SECRET=YOUR_SECRET_CODE \
    -e TIMEZONE=YOUR_TIME_ZONE \
    xaster/docker-aria2-alpine
```

# Note
```
6800=rpc listen port
6882/udp=dht listen port
51414=bt listen port
```
