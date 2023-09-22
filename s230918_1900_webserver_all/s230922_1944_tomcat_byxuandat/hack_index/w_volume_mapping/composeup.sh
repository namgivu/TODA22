set -e  # halt if err

docker-compose up -d

echo 

sleep 1
docker-compose logs 

echo

http :38080 | grep 'Tel4vn @ tomcat' --color=always
