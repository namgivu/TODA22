docker-compose up -d

echo 

sleep 1
docker-compose logs 

echo

http :28080 | grep 'Apache Tomcat' --color=always
