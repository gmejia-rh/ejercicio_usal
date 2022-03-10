FROM quay.io/centos/centos:stream9

MAINTAINER Alfredo Moralejo <amoralej@redhat.com>

RUN dnf install -y nginx

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
