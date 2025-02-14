<<info
this script is used to install the packages
info


echo "installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "installation completed"
