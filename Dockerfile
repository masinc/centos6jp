FROM centos:centos6

MAINTAINER masinc

RUN yum -y update &&\
    yum reinstall -y glibc-common

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

RUN echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock &&\
    ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
