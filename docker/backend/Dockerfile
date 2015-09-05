FROM nginx:1.9

COPY default.templ /etc/nginx/conf.d/default.templ
COPY start-nginx.sh /start-nginx.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY site-normal /site-normal
COPY site-upgrade /site-upgrade

VOLUME /var/www/html

CMD ["/start-nginx.sh"]
