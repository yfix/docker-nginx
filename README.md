# yfix/docker-nginx

[![CircleCI](https://img.shields.io/circleci/project/yfix/docker-nginx/release.svg)](https://circleci.com/gh/yfix/docker-nginx)
[![Docker Stars](https://img.shields.io/docker/stars/yfix/docker-nginx.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/yfix/docker-nginx.svg)][hub]
[![ImageLayers](https://imagelayers.io/badge/yfix/docker-nginx.svg)](https://imagelayers.io/?images=yfix/docker-nginx:latest 'Get your own badge on imagelayers.io')

Nginx extended version: provides a version of nginx with the standard modules, plus extra features and modules,
this container is based on ubuntu:14.04 (trusty) and the official PPA.
## Tags:
* Stable: Stable versions of NGINX.
* Development: Development (aka Mainline) versions of NGINX.

## STANDARD HTTP MODULES: 
Core, Access, Auth Basic, Auto Index, Browser,
Charset, Empty GIF, FastCGI, Geo, Gzip, Headers, Index, Limit Requests,
Limit Zone, Log, Map, Memcached, Proxy, Referer, Rewrite, SCGI,
Split Clients, SSI, Upstream, User ID, UWSGI.

## OPTIONAL HTTP MODULES:
Addition, Debug, Embedded Perl, FLV, GeoIP,
Gzip Precompression, Image Filter, IPv6, MP4, Random Index, Real IP,
Secure Link, Spdy, SSL, Stub Status, Substitution, WebDAV, XSLT.

## MAIL MODULES:
Mail Core, IMAP, POP3, SMTP, SSL.

## THIRD PARTY MODULES:
Auth PAM, Chunkin, DAV Ext, Echo, Embedded Lua,
Fancy Index, HttpHeadersMore, HTTP Substitution Filter, http push,
Nginx Development Kit, Upload Progress, Upstream Fair Queue.

## Usage

```bash
$ docker run -ti --rm -v /path/to/nginx:/etc/nginx -p 8081:80 yfix/nginx-extras
```
