FROM python:3.7-alpine

RUN apk add --no-cache --update-cache \
            alpine-sdk \
            libev-dev \
            openssl \
            libressl-dev \
            libffi-dev \
            swig

EXPOSE 1234

ADD . /opt/server

WORKDIR /opt/server

RUN pip install --no-cache-dir --index-url https://pypi.org/simple /opt/server && \
    chmod +x /opt/server/entrypoint.sh

ENTRYPOINT ["/opt/server/entrypoint.sh"]