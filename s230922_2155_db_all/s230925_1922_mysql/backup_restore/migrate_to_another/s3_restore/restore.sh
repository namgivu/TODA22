hint='
backuptar_f=../s2_backup/backup.tar ./restore.sh
'

SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

[[             -z   $backuptar_f ]] && (echo 'Envvar backuptar_f is required'; kill $$)
[[             ! -f $backuptar_f ]] && (echo 'ERROR backup file notfound'; kill $$)
backuptar_f=`realpath $backuptar_f`

# backup restore hint  ref https://docs.docker.com/storage/volumes/#restore-volume-from-a-backup
# mysqld start/stop    ref https://github.com/docker-library/mysql/blob/master/8.0/Dockerfile.debian#L97C7-L97C13

restored_to_c='s1_restored_to_c_mysql_c_1'

docker stop $restored_to_c  # stop so that no more changes added to the container

echo; echo '# giving sometime for it to STOP completely' ; sleep 2

#           >                                         yy /var/lib/mysql
# main idea > untar :backuptar_f into container xx at yy
#           >                                   xx s1_restored_to_c_mysql_c_1
docker run \
    --volumes-from $restored_to_c  `# ie mysql_v:/var/lib/mysql ` \
    -v `dirname $backuptar_f`:/backup `# bring in the backup.tar into container to untar` \
    ubuntu \
    bash -c ''\
'cd / && tar xvf /backup/backup.tar ; '\
    'echo done'

    #TODO need to clear current data path, how?
    # current run
    # rm -rf /var/lib/mysql/
    # get error > rm: cannot remove '/var/lib/mysql/': Device or resource busy

echo; echo '# giving sometime for it to RESTORE completely' ; sleep 2
docker start $restored_to_c  # restart it back after restored
