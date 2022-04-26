#!/bin/bash
apt-get update && apt -y upgrade
apt install openjdk-17-jdk
apt install screen 

java -jar forge-1.18.2-40.1.0-installer.jar --installServer
rm forge-1.18.2-40.1.0-installer.jar

source ./run.sh

sed -i 's/eula=false/eula=true/g' eula.txt
unzip mods.zip -d mods

echo '' >> user_jvm_args.txt
echo '-Xms2048M' >> user_jvm_args.txt
echo '-Xmx4096M' >> user_jvm_args.txt
sed -i 's/unix_args.txt "$@"/unix_args.txt "$@" nogui/g' run.sh