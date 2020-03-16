FROM python:3.7-alpine

EXPOSE 1234

ADD server /opt/server

WORKDIR /opt/server

RUN pip install --no-cache-dir --index-url https://pypi.org/simple falcon==1.4.1 gunicorn==19.9.0 && \
    chmod +x /opt/server/entrypoint.sh

ENTRYPOINT ["/opt/server/entrypoint.sh"]