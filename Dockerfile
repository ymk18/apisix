FROM centos

RUN sudo yum install yum-utils \
    sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo \
    sudo yum install -y openresty etcd
    # sudo service etcd start

RUN sudo yum install -y https://github.com/iresty/apisix/releases/download/v0.5/apisix-0.5-0.el7.noarch.rpm

# TODO
