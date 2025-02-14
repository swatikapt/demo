#!/bin/bash

<<info
this is a script to create user
info

echo "======create user========"
#read -p "enter username" username
#read -p "enter password" password

#read -p "enter username: "
#read -p "enter password: "

username=$1
password=$2

sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd "$username"
echo "username: $username"
echo "password: $password"
echo "======user created========"

#sudo userdel $1

#echo "======user deletion========"
#cat /etc/passwd | grep $1 | wc | awk '{print $1}'


