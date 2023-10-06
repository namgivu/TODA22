SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

context_d="$SH/context_d--flask_webapp"

docker build \
  -f "$SH/Dockerfile" \
  -t midterm_test_flaskapp_i \
  $context_d

echo

docker rm -f midterm_test_flaskapp_c || true

docker run \
  -p'5000':5000 \
  -d \
  --name midterm_test_flaskapp_c \
  midterm_test_flaskapp_i

sleep 3
echo
docker ps | grep -E 'midterm_test_flaskapp_c|NAME' --color=always
echo
docker logs midterm_test_flaskapp_c
