#!/bin/bash

x=$(cat /etc/os-release)
y=$(echo $x | awk 'NR==1 {print $0}')

if [[ "$y" =~ .*"Ubuntu".* ]]; then
        sudo apt update -y
        sudo apt install nodejs -y
	npm install -g serve
	npm install -g pm2
elif [[ "$y" =~ .*"Red Hat".* ]] || [[ "$y" =~ .*"Amazon".* ]]; then
	sudo yum update -y
        sudo yum install nodejs -y
	npm install -g serve
	npm install -g pm2
else
        echo "Any other OS"
fi
