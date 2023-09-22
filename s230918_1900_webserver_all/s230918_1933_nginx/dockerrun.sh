set -e  # halt if error

docker stop nginx_c ||true ; docker rm nginx_c ||true

docker run -p88:80 -d                  --name=nginx_c  nginx
#      run -p port -d detach/daemon/bg containername   imagename

echo

sleep 1
docker logs nginx_c

echo

docker ps | grep -E ':88|PORT| nginx_c|NAME'  --color=always

echo

curl -s localhost:88 | grep 'Welcome to nginx!'  --color=always
