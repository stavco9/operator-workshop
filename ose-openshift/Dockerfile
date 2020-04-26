FROM registry.infra.local:5000/openshift3/ose-ansible
MAINTAINER  Meemail me@comefind.me # not a real email

USER root
WORKDIR /opt/app-root/
COPY python* .
RUN yum install -y python*
