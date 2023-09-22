docker-compose up -d

echo

sleep 1
docker-compose logs

echo

http :288 | grep 'Welcome to nginx!' --color=always
