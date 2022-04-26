#!/bin/bash
apt-get update && apt -y upgrade
apt install default-jre
apt install screen 
java -jar forge-1.18.2-40.1.0-installer.jar --installServer
