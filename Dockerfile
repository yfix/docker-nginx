FROM debian:jessie

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list && \
  apt-get update && \
  apt-get -t jessie-backports install -y nginx-extras && \
  apt-get autoremove -y && \
  apt-get clean -y && \
  ln -sf /dev/stdout /var/log/nginx/access.log; \
  ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
