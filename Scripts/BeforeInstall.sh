#!/bin/bash
cd /home/ubuntu/codepipeline/reactjs
for pid in $(lsof -t -i:3000); do kill -9 $pid; done
sudo rm -rf *
pm2 delete all
