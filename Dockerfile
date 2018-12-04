FROM centos:latest

RUN yum update -y
RUN yum install -y httpd net-tools

RUN echo "RUN from Docker" > /var/www/html/index.html

EXPOSE 80

ENTRTYPOINT apachectl "-DFOREGROUND"
