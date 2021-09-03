FROM ghcr.io/rekgrpth/gost.docker
ADD bin /usr/local/bin
ADD jar /usr/local/jar
ADD xslt /usr/local/xslt
RUN set -eux; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .gar-rundeps \
        java-common \
    ; \
    find /usr -type f -name "*.a" -delete; \
    find /usr -type f -name "*.la" -delete; \
    rm -rf "${HOME}" /usr/share/doc /usr/share/man /usr/local/share/doc /usr/local/share/man; \
    chmod -R 0755 /usr/local/bin; \
    echo done
