# korobeynikovnv_infra
korobeynikovnv Infra repository

для chain подключения через bastion использовать:
ssh -J appuser@84.201.138.71 appuser@10.130.0.12

#Домашнее задание №5 VPN через pritunl
bastion_IP=84.201.177.74
someinternalhost_IP=10.130.0.12

#Домашнее задание №6 тестовое приложение на руби
testapp_IP = 178.154.227.39
testapp_port = 9292

#homework #7 packer-base
packer/create-reddit-vm.sh - init yandex cloud instance
packer/ubuntu16.json - packer settings for base reddit vm (mongo+ruby)
packer/immutable.json - packer settings for full reddit vm (mongo+ruby+reddit)
