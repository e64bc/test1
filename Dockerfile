FROM pentesteracademy/lamp:php7-mysql-5.5

COPY files/app /var/www/html
COPY files/mysql-setup.sh /
COPY files/fusion.sql /

RUN chown -R www-data:www-data /var/www/html/ \
    && chmod 755 -R /var/www/html/  

RUN chmod +x /mysql-setup.sh \
    && /etc/init.d/mysql start \
    && /mysql-setup.sh

