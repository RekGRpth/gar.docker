FROM ghcr.io/rekgrpth/gost.docker
ADD bin /usr/local/bin
ADD sql /usr/local/sql
ADD xsd /usr/local/xsd
ENV GROUP=gar \
    USER=gar
RUN set -eux; \
    mkdir -p "${HOME}"; \
    addgroup -S "${GROUP}"; \
    adduser -D -S -h "${HOME}" -s /sbin/nologin -G "${GROUP}" "${USER}"; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps \
        autoconf \
        automake \
        gcc \
        git \
        libxml2-dev \
        make \
        musl-dev \
        su-exec \
    ; \
    mkdir -p "${HOME}/src"; \
    cd "${HOME}/src"; \
    git clone https://github.com/RekGRpth/xml2.git; \
    cd "${HOME}/src/xml2"; \
    ./configure; \
    make -j"$(nproc)" install; \
    cd /; \
    apk add --no-cache --virtual .gar-rundeps \
        $(scanelf --needed --nobanner --format '%n#p' --recursive /usr/local | tr ',' '\n' | sort -u | while read -r lib; do test ! -e "/usr/local/lib/$lib" && echo "so:$lib"; done) \
        jq \
        libxslt \
        postgresql-client \
        unzip \
        xmlstarlet \
    ; \
    find /usr/local/bin -type f -exec strip '{}' \;; \
    find /usr/local/lib -type f -name "*.so" -exec strip '{}' \;; \
    apk del --no-cache .build-deps; \
    find /usr -type f -name "*.a" -delete; \
    find /usr -type f -name "*.la" -delete; \
    rm -rf "${HOME}" /usr/share/doc /usr/share/man /usr/local/share/doc /usr/local/share/man; \
    chmod -R 0755 /usr/local/bin; \
    echo done
