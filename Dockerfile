FROM nginx
MAINTAINER Guy Sheffer (GuySoft) <guysoft at gmail dot com>

ENV FRONTEND frontend
ENV BACKEND backend

COPY ./nginx.conf.template /etc/nginx/nginx.conf.template
COPY entrypoint.sh /

WORKDIR /
ENTRYPOINT ./entrypoint.sh
