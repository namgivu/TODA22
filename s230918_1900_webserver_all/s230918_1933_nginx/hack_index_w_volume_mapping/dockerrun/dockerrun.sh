c=nginx_hackindex_volmapping_dockerrun_c

docker rm -f $c

docker run \
    -p 488:80 \
    -d \
    -v ./usr/share/nginx/html:/usr/share/nginx/html \
    --name $c nginx

echo

sleep 1
docker logs $c

echo

http :488 | grep 'Welcome to nginx!' --color=always
