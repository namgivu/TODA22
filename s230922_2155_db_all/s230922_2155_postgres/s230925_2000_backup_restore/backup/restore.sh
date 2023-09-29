SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

[[ ! -f $SH/backup.tar ]] && (echo 'ERROR backup file notfound'; kill $$)

# ref https://docs.docker.com/storage/volumes/#restore-volume-from-a-backup

docker run \
    --rm \
    --volumes-from 's230925_2111_restored_to_c_postgres_c_1' \
    -v $SH:/backup `# bring in the backup.tar into container to untar` \
    ubuntu \
    bash -c "cd /var/lib/postgresql/data && tar xvf /backup/backup.tar --strip 4"
             #TODO use another version of untar command so that easier to understand the script flow / idea
