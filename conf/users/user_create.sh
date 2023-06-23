#!/bin/bash
read -p "Please enter your username: " username
echo -n "$username:" >> user.htpasswd
openssl passwd -apr1 >> user.htpasswd