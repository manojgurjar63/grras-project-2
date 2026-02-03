FROM quay.io/centos/centos:stream9

RUN yum install -y httpd vim wget unzip

WORKDIR /var/www/html/

RUN git clone /var/www/html/https://github.com/startbootstrap/startbootstrap-clean-blog.git .

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
