#!/bin/bash
<<msg
this script is for user management
msg

#read -p "enter username: " username
#read -p "enter password: " password
<<check
username=$1
password=$2
usertobedeleted=$3


sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd "$username"

if grep -q "^$username:" /etc/passwd; then
   echo "Username already exists: $username"
else
    sudo useradd -m "$username"
    echo -e "$password\n$password" | sudo passwd "$username"
    echo "User created successfully: $username"
fi

#script to delete a user
usertobedeleted=$1
if grep -q "^$usertobedeleted" /etc/passwd; then
	sudo userdel $1
	echo "user deleted successfully"
else
	echo "user does not exist"
fi

#script to reset password

user=$1
if  grep -q "^$user" /etc/passwd; then
	sudo passwd $1
else
	echo "user does not exist"
fi

check

#command to list down all users with their uid

count=$(cat /etc/passwd | awk -F: '{print $1 ":" $3}')

echo "$count"
