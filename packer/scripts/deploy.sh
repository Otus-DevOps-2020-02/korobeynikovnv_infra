#!/bin/bash
sudo apt-get update
sudo apt-get install -y git
echo ========reddit-instal==============
sudo git clone -b monolith https://github.com/express42/reddit.git /etc/reddit-application
cd /etc/reddit-application
bundle install
sudo cp /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl daemon-reload
sudo systemctl enable puma
sudo systemctl start puma
ps aux | grep puma
echo ========reddit-install-end========
