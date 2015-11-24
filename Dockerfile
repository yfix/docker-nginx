FROM ubuntu:14.04

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

# http://www.ubuntuupdates.org/ppa/nginx?dist=trusty
ENV NGINX_VERSION 1.8.0-1+trusty1

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" > /etc/apt/sources.list.d/nginx-stable.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C && \
  apt-get update && \
  apt-get install -y nginx-extras=${NGINX_VERSION} && \
  apt-get autoremove -y && \
  apt-get clean -y && \
  ln -sf /dev/stdout /var/log/nginx/access.log; \
  ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
