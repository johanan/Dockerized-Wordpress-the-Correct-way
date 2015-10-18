#!/bin/bash

for name in BACKEND_PORT_80_TCP_ADDR
do
	eval value=\$$name
	sed "s|\${${name}}|${value}|g" /etc/varnish/default.templ > /etc/varnish/default.vcl
done

varnishd -F -f /etc/varnish/default.vcl -s malloc,$CACHE_SIZE -a 0.0.0.0:80
