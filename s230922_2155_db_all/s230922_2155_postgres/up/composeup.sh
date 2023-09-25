docker-compose down  # MUST have down before up sothat envvar get refreshed
echo
docker-compose up -d

echo

sleep 1
docker-compose logs

echo
docker exec s230922_2155_postgres_postgres_c_1 bash -c 'echo POSTGRES_PASSWORD=$POSTGRES_PASSWORD'
docker exec s230922_2155_postgres_postgres_c_1 bash -c 'echo     POSTGRES_USER=$POSTGRES_USER'

NOTE='
if rerun / recreate the containers
data in postgres will be lost
-> need volume mapping to save postgres data
'
