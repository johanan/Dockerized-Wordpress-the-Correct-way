FROM debian:jessie

RUN apt-get update && \
  apt-get install -y apt-transport-https && \
  apt-get install -y curl && \
  curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - && \
  echo "deb https://repo.varnish-cache.org/debian/ jessie varnish-4.0" >> /etc/apt/sources.list.d/varnish-cache.list && \
  apt-get update && \
  apt-get install -y varnish

COPY start-varnish.sh /start-varnish.sh
COPY default.templ /etc/varnish/default.templ

ENV CACHE_SIZE=64m

EXPOSE 80

CMD ["/start-varnish.sh"]
