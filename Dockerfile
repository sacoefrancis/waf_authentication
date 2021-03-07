FROM nginx:alpine

RUN  apk update && apk add apache2-utils
COPY  htpasswd /etc/apache2/.htpasswd
COPY http.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
