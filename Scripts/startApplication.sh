#!/bin/bash
cd /home/ubuntu/codepipeline/vuejs
#nohup npm start > /dev/null 2>&1 &
npm install -g serve
npm install -g pm2
pm2 serve build 3000 --spa
