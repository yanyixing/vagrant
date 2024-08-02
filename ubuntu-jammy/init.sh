!/bin/bash

NAME=$1

echo $NAME > /etc/hostname
sed -i "s/ubuntu-jammy/$NAME/g" /etc/hosts
hostname $NAME

apt update
