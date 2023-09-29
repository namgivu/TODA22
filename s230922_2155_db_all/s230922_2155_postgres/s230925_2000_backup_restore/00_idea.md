```
# run :dbstore_c having data at /dbdata
docker run \
    -v /dbdata \ 
    --name dbstore_c \
    ubuntu \ 
    /bin/bash


# backup /dbdata to backup.tar  ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes
docker run \
    --rm \
    --volumes-from dbstore_c `# copy volume config cua :dbstore_c ie /dbdata vol shared bw these two container ` \ 
    -v $(pwd):/backup 
    ubuntu \
    tar cvf /backup/backup.tar /dbdata  `# compress /dbdata to backup.tar`


# uncompress / untar backup.tar into :dbstore2_c  ref https://docs.docker.com/storage/volumes/#restore-volume-from-a-backup
docker run \
    --rm \
    --volumes-from dbstore2_c \
    -v $(pwd):/backup \
    ubuntu \
    bash -c "cd /dbdata && tar xvf /backup/backup.tar --strip 1"
