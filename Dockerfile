FROM nginx:1.15-alpine

COPY build/ /opt/contacts-ui/

COPY default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]