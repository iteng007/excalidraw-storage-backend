#!/bin/sh

echo "Looking for the database ..."
while ! redis-cli -u $STORAGE_URI PING | grep -q PONG; 
do
  echo "Waiting for database."
  sleep 2
done
echo "Found database."
echo "Starting the application..."

npm run start:prod
