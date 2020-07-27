FROM alpine:latest

RUN apk add --no-cache gettext ca-certificates git nginx

COPY ./linux_root/ /

RUN chmod +x /opt/*

CMD /opt/init.sh && nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
