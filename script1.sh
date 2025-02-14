#!/bin/bash
echo "hi i m learning to write shell scipts"

#mkdir -p demo1
#echo "test scripts" > test1.txt

#user defined variables
var="xyz"
variable="abc"

echo "learning to print user defined variables $var"
echo "statement 2 $variable"

#shell/environment variables
#user input
echo "current logged in user: $USER"
#read -p  "what is ur name" fullname
echo "fullname is $fullname"

#arguments
echo "first character of alpahabet $1"
echo "second character $2"
echo "third character $3"
echo "starting 3 characters are $@"

