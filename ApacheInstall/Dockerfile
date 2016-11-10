#Based on centos7 and will start apache service in each container
FROM centos:latest
MAINTAINER lucas@lucasmasiero.com

RUN yum update -y
RUN yum install -y httpd vim htop telnet tcpdump wget net-tools ntp telnet tcpdump traceroute

RUN echo "This is a custom index file built during the image creation" > /var/www/html/index.html

EXPOSE 80 

ENTRYPOINT apachectl "-DFOREGROUND"



