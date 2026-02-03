FROM quay.io/centos/centos:stream9

RUN yum install -y httpd git unzip

WORKDIR /var/www/html/

RUN rm -rf /var/www/html/*

RUN git clone https://github.com/startbootstrap/startbootstrap-clean-blog.git .

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
