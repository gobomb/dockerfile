FROM centos:7.4.1708
RUN yum install -y epel-release && yum install -y privoxy && yum clean all
WORKDIR /privoxy
ADD privoxy_cfg.conf . 
ADD entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
