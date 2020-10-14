#!/bin/bash
#wait for auto updates to finish
apt-get check >/dev/null 2>&1
while [ "$?" -ne 0 ]
do
  echo ++++++awaiting auto updates
  sleep 2 
  apt-get check >/dev/null 2>&1
done

apt-get update
apt-get install apt-transport-https ca-certificates
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 30
apt-get update
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod
