FROM redmine:4.1.1-alpine
RUN apk add --update make
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
    && apk add \
        bash
RUN gem install json
