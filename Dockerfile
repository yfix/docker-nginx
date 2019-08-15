FROM yfix/baseimage:18.04

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu bionic main" > /etc/apt/sources.list.d/nginx-stable.list \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C \
  \
  && apt-get update && apt-get install -y \
    nginx-extras \
  \
  && nginx -v \
  && nginx -V \
  && nginx -t \
  \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  \
  && ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

COPY docker /

EXPOSE 80 443
