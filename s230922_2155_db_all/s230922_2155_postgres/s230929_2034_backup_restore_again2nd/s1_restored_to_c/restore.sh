hint='
backuptar_f=../s0_backup/backup.tar ./restore.sh
'

SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

[[             -z   $backuptar_f ]] && (echo 'Envvar backuptar_f is required'; kill $$)
[[             ! -f $backuptar_f ]] && (echo 'ERROR backup file notfound'; kill $$)
backuptar_f=`realpath $backuptar_f`

# ref https://docs.docker.com/storage/volumes/#restore-volume-from-a-backup

# main idea > untar backup.tar into /var/lib/postgresql/data
docker run \
    --rm \
    --volumes-from 's1_restored_to_c_postgres_c_1'  `# ie postgres_v:/var/lib/postgresql/data` \
    -v `dirname $backuptar_f`:/backup `# bring in the backup.tar into container to untar` \
    ubuntu \
    bash -c "cd /var/lib/postgresql/data && tar xvf /backup/backup.tar --strip 4"
             #TODO use another version of untar command so that easier to understand the script flow / idea
