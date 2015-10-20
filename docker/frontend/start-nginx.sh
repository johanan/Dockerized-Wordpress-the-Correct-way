#!/bin/bash

for name in VARNISH_PORT_80_TCP_ADDR
do
	eval value=\$$name
	sed "s|\${${name}}|${value}|g" /etc/nginx/conf.d/default.templ > /etc/nginx/conf.d/default.conf
done

nginx -g 'daemon off;'
