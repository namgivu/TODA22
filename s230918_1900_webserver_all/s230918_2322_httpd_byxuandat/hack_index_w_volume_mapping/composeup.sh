docker-compose up -d

echo

sleep 1
docker-compose logs

echo

http :399 | grep 'It works' --color=always
