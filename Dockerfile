FROM mhart/alpine-node

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    npm install -g apidoc && \
    rm -rf /var/cache/apk/*
