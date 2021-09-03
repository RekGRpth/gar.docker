FROM ghcr.io/rekgrpth/gost.docker
ADD bin /usr/local/bin
ADD xslt /usr/local/xslt
RUN set -eux; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps \
        wget \
        unzip \
    ; \
    mkdir -p "${HOME}/src"; \
    cd "${HOME}/src"; \
    wget --continue --output-document="SaxonHE10-5J.zip" "https://sourceforge.net/projects/saxon/files/Saxon-HE/10/Java/SaxonHE10-5J.zip/download"; \
    unzip "SaxonHE10-5J.zip"; \
    mkdir -p /usr/local/jar; \
    cp -f "saxon-he-10.5.jar" /usr/local/jar/; \
    apk add --no-cache --virtual .gar-rundeps \
        openjdk8-jre-base \
        postgresql-client \
    ; \
    cd /; \
    apk del --no-cache .build-deps; \
    find /usr -type f -name "*.a" -delete; \
    find /usr -type f -name "*.la" -delete; \
    rm -rf "${HOME}" /usr/share/doc /usr/share/man /usr/local/share/doc /usr/local/share/man; \
    chmod -R 0755 /usr/local/bin; \
    echo done
