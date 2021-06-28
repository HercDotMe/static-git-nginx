FROM nginx:alpine

LABEL maintainer="<Vlad-Andrei Erculescu> herc@herc.work"

RUN apk --update add git less openssh openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
