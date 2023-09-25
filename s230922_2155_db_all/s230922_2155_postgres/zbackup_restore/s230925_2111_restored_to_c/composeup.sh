SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

docker-compose down  # MUST have down before up sothat envvar get refreshed
echo
docker-compose up -d

echo

sleep 1
docker-compose logs
