FROM ubuntu:14.04
MAINTAINER "jihwan-kim"
LABEL "purpose"="webserver practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD text.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
