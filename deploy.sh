#!/bin/bash
echo "executing script"
sudo apt-get update -y
sudo apt-get install default-jre -y
sudo apt-get install apache2 -y
chmod 777 /var/www/html
sudo cp /tmp/tmp/app/* /var/www/html
cd  /var/www/html
sudo rm index.html
nohup java -jar my-app-1.0-SNAPSHOT.jar > index.html 2>&1 &
