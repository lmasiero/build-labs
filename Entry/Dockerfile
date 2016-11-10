#Docker with unprivileged user
FROM centos:latest
MAINTAINER lucas@lucasmasiero.com

RUN useradd -ms /bin/bash dummyuser

ENTRYPOINT echo "This command will display this message on every container that is run from it"


USER dummyuser
