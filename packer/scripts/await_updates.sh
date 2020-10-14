apt-get check >/dev/null 2>&1
while [ "$?" -ne 0 ]
do
  echo ++++++awaiting auto updates
  sleep 2
  apt-get check >/dev/null 2>&1
done
echo ++++++updates available
apt-get update
