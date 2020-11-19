#!/bin/bash
ls
nohup java -jar app/my-app-1.0-SNAPSHOT.jar > /home/ubuntu/log.txt 2>&1 &
