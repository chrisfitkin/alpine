FROM python:3.8-alpine

RUN apk add --no-cache --virtual .build-deps g++ && \
    python3 -m pip install \
    numpy==1.18.2 \
    pandas==1.0.3 \
    python-dateutil==2.8.1 \
    pytz==2019.3 \
    six==1.14.0 \
    --no-cache-dir && \
    apk --purge del .build-deps
