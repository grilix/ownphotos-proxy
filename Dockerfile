FROM nginx
MAINTAINER Guy Sheffer (GuySoft) <guysoft at gmail dot com>

ENV FRONTEND_HOST frontend
ENV BACKEND_HOST backend
ENV PROXY_PORT 80

COPY ./nginx.conf.template /etc/nginx/nginx.conf.template
COPY entrypoint.sh /

WORKDIR /
ENTRYPOINT ./entrypoint.sh
