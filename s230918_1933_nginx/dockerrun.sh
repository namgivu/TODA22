set -e  # halt if error

docker run -p88:80 -d nginx
#      run -p port -d detach/daemon/run as background 

echo

docker ps | grep -E ':88|PORT'  --color=always

echo

curl -s localhost:88 | grep 'Welcome to nginx!'  --color=always
