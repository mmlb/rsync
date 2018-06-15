FROM alpine:3.7

ENTRYPOINT ["/entrypoint"]
EXPOSE 873

RUN mkdir -p /data && chmod a+rw /data
RUN apk add --update --upgrade --no-cache rsync

ADD run /entrypoint
