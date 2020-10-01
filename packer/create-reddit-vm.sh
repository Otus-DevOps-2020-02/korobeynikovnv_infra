#!/bin/sh
timestamp=$(date +%s)
echo "reddit-app-$timestamp"
yc compute instance create \
  --name "reddit-app-$timestamp" \
  --hostname "reddit-app-$timestamp" \
  --memory=4 \
  --create-boot-disk image-folder-id=b1g0ibhbccvgtn9tuln9,image-family=reddit-full,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/yandex_cloud.pub
