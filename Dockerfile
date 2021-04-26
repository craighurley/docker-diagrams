FROM        python:3.8-alpine3.11
COPY        docker-entrypoint.sh /usr/local/bin/
WORKDIR     /workdir
ENTRYPOINT  [ "docker-entrypoint.sh" ]
RUN         apk update \
            && apk add --no-cache graphviz freetype-dev ttf-dejavu jpeg-dev zlib-dev \
            && apk add --no-cache --virtual .build-deps build-base linux-headers \
            && pip3 install --no-cache-dir \
                diagrams==0.19.1 \
                blockdiag==2.0.1 \
                seqdiag==2.0.0 \
                actdiag==2.0.0 \
            && apk del .build-deps
