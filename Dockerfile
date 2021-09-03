FROM ghcr.io/rekgrpth/gost.docker
RUN set -eux; \
    apk update --no-cache; \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps \
        autoconf \
        automake \
        bison \
        check-dev \
        cjson-dev \
        clang \
        file \
        flex \
        fltk-dev \
        g++ \
        gcc \
        git \
        gnutls-dev \
        jansson-dev \
        jpeg-dev \
        json-c-dev \
        libgcrypt-dev \
        libpng-dev \
        libtool \
        linux-headers \
        lmdb-dev \
        make \
        musl-dev \
        openssl-dev \
        pcre-dev \
        subunit-dev \
        talloc-dev \
        yaml-dev \
        zlib-dev \
    ; \
    mkdir -p "${HOME}/src"; \
    cd "${HOME}/src"; \
    git clone https://github.com/RekGRpth/handlebars.c.git; \
    git clone https://github.com/RekGRpth/htmldoc.git; \
    git clone https://github.com/RekGRpth/libinjection.git; \
    git clone https://github.com/RekGRpth/libjwt.git; \
    git clone https://github.com/RekGRpth/mustach.git; \
    cd "${HOME}/src/handlebars.c"; \
    ./configure --disable-refcounting --disable-static; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/htmldoc"; \
    ./configure --without-gui; \
    cd "${HOME}/src/htmldoc/htmldoc"; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/htmldoc/fonts"; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/htmldoc/data"; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/libinjection/src"; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/libjwt"; \
    autoreconf -vif; \
    ./configure; \
    make -j"$(nproc)" install; \
    cd "${HOME}/src/mustach"; \
    make -j"$(nproc)" libs=single install; \
    cd /; \
    apk add --no-cache --virtual .pdf-rundeps \
        $(scanelf --needed --nobanner --format '%n#p' --recursive /usr/local | tr ',' '\n' | sort -u | while read -r lib; do test ! -e "/usr/local/lib/$lib" && echo "so:$lib"; done) \
    ; \
    find /usr/local/bin -type f -exec strip '{}' \;; \
    find /usr/local/lib -type f -name "*.so" -exec strip '{}' \;; \
    apk del --no-cache .build-deps; \
    find /usr -type f -name "*.a" -delete; \
    find /usr -type f -name "*.la" -delete; \
    rm -rf "${HOME}" /usr/share/doc /usr/share/man /usr/local/share/doc /usr/local/share/man; \
    echo done
