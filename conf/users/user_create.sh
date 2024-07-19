#!/bin/bash
rm -f user.htpasswd
read -p "Please enter your username: " username

read -sp "Please enter your password: " password
echo

echo -n "$username:" >> user.htpasswd
openssl passwd -apr1 "$password" >> user.htpasswd

echo "User $username has been added to user.htpasswd."
