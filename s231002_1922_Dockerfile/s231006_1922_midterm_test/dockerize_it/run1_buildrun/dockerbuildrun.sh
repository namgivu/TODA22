SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

set -e  # halt if err -> only run if can build

context_d="$SH/../../dockerize_it/context_d--flask_webapp"

docker image rm -f midterm_test_flaskwebapp_i || true

docker build \
  -f "$SH/../../dockerize_it/Dockerfile" \
  -t midterm_test_flaskwebapp_i \
  $context_d

echo

docker rm -f midterm_test_flaskwebapp_c || true

echo

docker run \
  -p'5000':5000 \
  -d \
  --name midterm_test_flaskwebapp_c \
  midterm_test_flaskwebapp_i

sleep 3
echo
docker ps | grep -E 'midterm_test_flaskwebapp_c|NAME' --color=always
echo
docker logs midterm_test_flaskwebapp_c
