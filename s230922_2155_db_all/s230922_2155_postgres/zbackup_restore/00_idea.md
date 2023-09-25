ref https://docs.docker.com/storage/volumes/#back-up-restore-or-migrate-data-volumes

```
# run :dbstore_c having data at /dbdata
docker run \
    -v /dbdata \ 
    --name dbstore_c \
    ubuntu \ 
    /bin/bash

# 
docker run \
    --rm \
    --volumes-from dbstore_c `# copy volume config cua :dbstore_c ie /dbdata vol shared bw these two container ` \ 
    -v $(pwd):/backup 
    ubuntu \
    tar cvf /backup/backup.tar /dbdata  `# compress /dbdata to backup.tar`
