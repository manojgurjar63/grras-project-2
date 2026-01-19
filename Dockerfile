FROM centos:latest
RUN yum install vim wget unzip -y
RUN wget -O /var/www/html/https://github.com/manojgurjar63/grras-project-1.git
WORKDIR /var/www/html/
EXPOSE 80
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
