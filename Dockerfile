# docker build -t apisix . --no-cache

FROM openresty/openresty:centos

RUN yum install -y etcd luarocks git curl automake autoconf gcc pcre-devel libtool gcc-c++
RUN luarocks install apisix

# CMD service etcd start

EXPOSE 80

# sudo apisix start
