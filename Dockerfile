FROM ztj1993/alpine:3.11

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN echo "---------- php7 install ----------" \
  && apk update \
  && apk search -qe php7-* | grep -v gmagick | grep -v apache | xargs apk add \
  && rm -rf /var/cache/apk/*
