FROM alpine:3.14.6
RUN apk update && apk add --no-cache --purge --clean-protected bash curl && rm -rf /var/cache/apk/*
COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
