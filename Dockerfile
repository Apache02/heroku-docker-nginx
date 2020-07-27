FROM alpine:latest

RUN apk add --no-cache ca-certificates git nginx

COPY ./linux_root/ /

EXPOSE 8080

CMD nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
