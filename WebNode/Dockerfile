#Docker with unprivileged user
FROM centos:centos6
MAINTAINER lucas@lucasmasiero.com

RUN yum update -y
RUN yum install -y net-tools vim telnet wget htop telnet ntp tcpdump traceroute httpd php which sudo git openssh-server

RUN mkdir -p /root/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8PNpPM0p2S1RjeETDee5b6tjrZe2BK3tG5Q57XljshpB8yEyj5LGA7X4iKTyF7k0UVXg2nUOF4sFIhqpsoW39SFh+hC+12uykRa4N6wkPXT3HOkrQGNQWVUTa9thXIEgVonNeJ+6f8WXghP3OrDBFO2enm6ezHSN6IHnGPCApATnmjqJC5HfAfV+qyVUSZg0VaUl0UxaKfTO8A9iEIfyeT/Pkwf8ho/Aj4cEIY/KNk7IdIMZOUjTSVSvo51nPLiYpXG+f7RGdabM4RL35H4v4TreoIab5dQrwz7+7PPoN+wRRrCQ+OX6seLUrS+tZa6GYJy8G9nLxm/k1emvVCoaX root@dummy.local" >> /root/.ssh/authorized_keys

RUN git clone https://github.com/lmasiero/docker-lab.git /var/www/html/

ENTRYPOINT apachectl "-DFOREGROUND"

EXPOSE 80

