FROM centos:latest
MAINTAINER rubygarg_8@yahoo.co.in
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/next-level.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip next-level.zip
RUN cp -rvf templatemo_532_next_level/* .
RUN rm -rf templatemo_532_next_level next-level.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
