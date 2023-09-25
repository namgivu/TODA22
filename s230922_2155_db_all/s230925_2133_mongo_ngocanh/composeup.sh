docker-compose down
echo
docker-compose up -d

echo

sleep 3
docker-compose logs
