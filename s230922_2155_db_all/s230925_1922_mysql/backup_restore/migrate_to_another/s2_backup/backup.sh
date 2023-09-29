SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

# ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes

# sudo rm -rf "$SH/backup.tar"

docker run \
    --volumes-from 's0_backup_fr_c_mysql_c_1' \
    -v $SH:'/backup' \
    ubuntu \
    tar cvf '/backup'/backup.tar '/var/lib/mysql'

sample_tar_files_inside='
var/lib/mysql/
var/lib/mysql/binlog.000001
var/lib/mysql/mysql.ibd
var/lib/mysql/client-key.pem
var/lib/mysql/binlog.index
var/lib/mysql/public_key.pem
...
'
