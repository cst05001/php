FROM	centos:7
RUN	yum update -y && yum clean all
ADD	epel-release-latest-7.noarch.rpm /tmp/
ADD	f8n-nginx-1.8.0-1.centos7.x86_64.rpm /tmp/
ADD	f8n-php-5.5.30-1.centos7.x86_64.rpm /tmp/
RUN	rpm -ivh /tmp/epel-release-latest-7.noarch.rpm \
	&& yum localinstall -y /tmp/f8n-nginx-1.8.0-1.centos7.x86_64.rpm  /tmp/f8n-php-5.5.30-1.centos7.x86_64.rpm \
	&& yum clean all
ADD	nginx.conf /opt/f8n/nginx/conf/
ADD	php-fpm.conf /opt/f8n/php/etc/
ADD	run.sh /root/run.sh
EXPOSE	80 443
CMD	["/root/run.sh"]
