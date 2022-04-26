#!/bin/bash
apt-get update && apt -y upgrade
apt install default-jre
apt install screen 
java -jar forge-1.18.2-40.1.0-installer.jar --installServer
rm forge-1.18.2-40.1.0-installer.jar
./run.sh
sed -i 's/eula=false/eula=true/g' eula.txt
./run.sh
