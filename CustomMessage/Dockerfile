#Docker with unprivileged user
FROM centos:latest
MAINTAINER lucas@lucasmasiero.com

RUN useradd -ms /bin/bash dummy
RUN echo "EXPORT 192.168.100.0/24" >> /etc/exports.list
USER dummy

#USER = change the designated user to run commands
#RUN = affects the image build
#CMD = runs after the build at exec


