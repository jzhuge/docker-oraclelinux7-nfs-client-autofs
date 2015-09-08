FROM oraclelinux:7
ENV container docker
MAINTAINER John Zhuge "john.zhuge@oracle.com"

###### CONFIGURE THIS PORTION TO YOUR OWN SPECS ######
######################################################

RUN yum -y update && \
    yum -y install systemd systemd-libs nfs-utils autofs

RUN systemctl enable autofs.service

RUN systemctl mask dev-mqueue.mount dev-hugepages.mount \
    systemd-remount-fs.service sys-kernel-config.mount \
    sys-kernel-debug.mount sys-fs-fuse-connections.mount \
    display-manager.service systemd-logind.service

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

EXPOSE 22

CMD  ["/usr/lib/systemd/systemd"]
