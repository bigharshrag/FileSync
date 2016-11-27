#!/bin/bash

sudo apt-get install lsyncd

# make the log files
sudo mkdir /var/log/lsyncd
sudo touch /var/log/lsyncd/lsyncd.{log,status}
sudo mkdir /etc/lsyncd

echo -n "Enter the path to the source folder to sync :" 
read source_path
sed -i "s#replacesource#$source_path#g" custom.lua

read -p "Enter SSH username :" user_name
sed -i "s#replacename#$user_name#g" custom.lua
sed -i "s#replaceuser#$USER#g" custom.lua
sudo mv custom.lua /etc/lsyncd/lsyncd.conf.lua
sudo service lsyncd start