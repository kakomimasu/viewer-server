echo "Waiting emulator..."
while :
do
  curl $FIREBASE_EMULATOR_HOST:9099
  if [ $? = "0" ]; then
    break
  fi
  sleep 1
  echo loop
done
