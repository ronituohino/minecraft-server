#!/bin/bash
apt-get update && apt -y upgrade
apt install default-jre
apt install screen 
mkdir server
unzip ./Ronin_rakennuspeli_1.18.2
