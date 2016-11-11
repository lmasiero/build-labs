#Docker with unprivileged user
FROM centos:latest
MAINTAINER lucas@lucasmasiero.com

RUN useradd -ms /bin/bash dummy

CMD "echo" "This is a custom message"

USER dummy
