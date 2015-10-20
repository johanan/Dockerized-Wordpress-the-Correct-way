FROM nginx:1.9

#add your keys here
#COPY public.crt /etc/nginx/ssl/public.crt
#COPY private.key /etc/nginx/ssl/private.key

COPY default.templ /etc/nginx/conf.d/default.templ
COPY start-nginx.sh /start-nginx.sh
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["/start-nginx.sh"]
