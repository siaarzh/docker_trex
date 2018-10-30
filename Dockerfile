FROM siaarzh/docker_spark:2.3.1-alpine_w_hadoop

LABEL name="trex"
LABEL version="1.0.1"
LABEL description="Bare container for the TREX app with Apache \
Spark, PySpark and additional packages for \
API creation and data manipulation."
LABEL maintainer="Serzhan Akhmetov <serzhan.akhmetov@gmail.com>"

WORKDIR /code
COPY requirements.txt /code/requirements.txt

RUN apk add --no-cache --virtual .build-deps \
    gcc \
    python3-dev \
    musl-dev \
    libxslt-dev \
    postgresql-dev \
    build-base \
    linux-headers \
    pcre-dev && \
    pip install --no-cache-dir -r /code/requirements.txt
