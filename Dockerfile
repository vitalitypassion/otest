FROM alpine:latest
ADD entrypoint.sh /startfile.sh
RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh
ENTRYPOINT ["sh", "-c", "/startfile.sh"]