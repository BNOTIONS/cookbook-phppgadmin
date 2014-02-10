FROM 		phppgadmin

MAINTAINER 	Jonathon W. Marshall <jonathon@bnotions.com>

ENV 		DEBIAN_FRONTEND noninteractive

RUN		echo 'daemon off;' >> /etc/nginx/nginx.conf && \
		echo 'cgi.fix_pathinfo = 0;' >> /etc/php5/fpm/php.ini

EXPOSE		80

CMD		service php5-fpm start && nginx
