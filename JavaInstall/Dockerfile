#Docker with unprivileged user
FROM centos:latest
MAINTAINER lucas@lucasmasiero.com

RUN useradd -ms /bin/bash dummyuser
RUN echo "EXPORT 192.168.100.0/24" >> /etc/exports.list

RUN yum update -y
RUN yum install -y net-tools vim telnet wget htop telnet ntp tcpdump traceroute

RUN cd ~ && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm 
RUN yum localinstall -y ~/jdk-8u102-linux-x64.rpm

USER dummyuser

RUN cd ~ && echo "export JAVA_HOME=/usr/java/jdk1.8.0/jre" >> /home/dummyuser/.bashrc

ENV JAVA_BIN /usr/java/jdk1.8.0/jre/bin

#USER = change the designated user to run commands
#RUN = affects the image build
#CMD = runs after the build at exec


