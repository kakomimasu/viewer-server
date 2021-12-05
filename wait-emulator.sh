echo "Waiting emulator..."
while :
do
  curl $FIREBASE_EMULATOR_HOST:9099 > /dev/null 2>&1
  if [ $? = "0" ]; then
    break
  fi
  sleep 1
done
echo "Emulator started!"