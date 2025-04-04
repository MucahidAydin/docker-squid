#!/bin/sh

if [ -z "$USERNAME" ]; then
  echo "Error: USERNAME environment variable must be provided." >&2
  exit 1
fi

if [ -z "$PASSWORD" ]; then
  echo "Error: PASSWORD environment variable must be provided." >&2
  exit 1
fi

echo "$USERNAME:$(openssl passwd -apr1 "$PASSWORD")" > /etc/squid/user.htpasswd

exec squid -N -d 1