FROM alpine:3.10

RUN apk update && apk add --no-cache docker-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
