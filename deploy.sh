#!/bin/bash
ls
echo "executing script"
nohup java -jar app/my-app-1.0-SNAPSHOT.jar > /home/ubuntu/log.txt 2>&1 &
