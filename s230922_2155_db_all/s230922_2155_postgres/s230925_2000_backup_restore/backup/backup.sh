SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

# ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes

docker run \
    --rm \
    --volumes-from 's230922_2155_postgres_postgres_c_1' \
    -v $SH:'/backup' \
    ubuntu \
    tar cvf '/backup'/backup.tar '/var/lib/postgresql/data'
