FROM quay.io/centos/centos:stream9

MAINTAINER Alfredo Moralejo <amoralej@redhat.com>

RUN dnf clean all && dnf install -y nginx && dnf clean all

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
