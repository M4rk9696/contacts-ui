FROM nginx:1.15-alpine

RUN apk add --no-cache gettext

COPY build/ /opt/contacts-ui/

COPY default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["/bin/ash", "-c", "envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]