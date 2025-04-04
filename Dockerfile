FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      squid \
      apache2-utils \
      openssl && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/squid/squid.conf /etc/squid/squid.conf
COPY ./conf/error_page/ERR_ACCESS_DENIED /usr/share/squid/errors/templates/ERR_ACCESS_DENIED

COPY ./conf/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
