echo "Waiting emulator..."
while :
do
  curl 192.168.99.100:9099
  if [ $? = "0" ]; then
    break
  fi
  sleep 1
  echo loop
done
