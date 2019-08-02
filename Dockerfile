FROM docker.io/library/centos:centos7

RUN yum install yum-utils
RUN yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
RUN yum install -y openresty etcd
RUN yum install -y https://github.com/iresty/apisix/releases/download/v0.5/apisix-0.5-0.el7.noarch.rpm

# CMD service etcd start && apisix start

EXPOSE 80
