docker volume ls  # eg s230922_2155_postgres_postgres_v
docker volume inspect  s230922_2155_postgres_postgres_v
echo
docker volume inspect  s230922_2155_postgres_postgres_v | grep 'Mountpoint'
docker volume inspect  s230922_2155_postgres_postgres_v | grep 'Mountpoint' | cut -d':' -f2 | cut -d'"' -f2
# eg /var/lib/docker/volumes/s230922_2155_postgres_postgres_v/_data

#TODO backup / take away postgres db data by using the above volume path eg upload to some storage server aka backupfiles
#TODO restore backupfiles into a chosen new postgres container
