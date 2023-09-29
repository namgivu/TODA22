SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

# ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes

# sudo rm -rf "$SH/backup.tar"

docker run \
    --rm \
    --volumes-from 'postgres_latest1_c_postgres_latest1_c_1' \
    -v $SH:'/backup' \
    ubuntu \
    tar cvf '/backup'/backup.tar '/var/lib/postgresql/data'
