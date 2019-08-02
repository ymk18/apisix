# docker build -t apisix . --no-cache

FROM docker.io/library/centos:centos7

RUN sudo yum install yum-utils
RUN sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
RUN sudo yum install -y openresty etcd
RUN sudo yum install -y https://github.com/iresty/apisix/releases/download/v0.5/apisix-0.5-0.el7.noarch.rpm

# RUN echo "#!/bin/sh\n sudo service etcd start && sudo apisix start" > /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9080
