FROM ghcr.io/rekgrpth/gost.docker:latest
ADD local /usr/local
ENV GROUP=gar \
    USER=gar
RUN set -eux; \
    chmod +x /usr/local/bin/*.sh; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    addgroup -S "$GROUP"; \
    adduser -S -D -G "$GROUP" -H -h "$HOME" -s /sbin/nologin "$USER"; \
    apk add --no-cache --virtual .build \
        autoconf \
        automake \
        gcc \
        git \
        libxml2-dev \
        make \
        musl-dev \
    ; \
    mkdir -p "$HOME/src"; \
    cd "$HOME/src"; \
    git clone https://github.com/RekGRpth/xml2.git; \
    cd "$HOME/src/xml2"; \
    autoreconf -vif; \
    ./configure; \
    make -j"$(nproc)" install; \
    cd /; \
    apk add --no-cache --virtual .gar \
        bash \
        coreutils \
        curl \
        execline \
        findutils \
        grep \
        jq \
        postgresql-client \
        sed \
        su-exec \
        unzip \
        wget \
        $(scanelf --needed --nobanner --format '%n#p' --recursive /usr/local | tr ',' '\n' | grep -v "^$" | sort -u | while read -r lib; do test -z "$(find /usr/local/lib -name "$lib")" && echo "so:$lib"; done) \
    ; \
    find /usr/local/bin -type f -exec strip '{}' \;; \
    find /usr/local/lib -type f -name "*.so" -exec strip '{}' \;; \
    apk del --no-cache .build; \
    rm -rf "$HOME" /usr/share/doc /usr/share/man /usr/local/share/doc /usr/local/share/man; \
    find /usr -type f -name "*.la" -delete; \
    mkdir -p "$HOME"; \
    chown -R "$USER":"$GROUP" "$HOME"; \
    echo done
