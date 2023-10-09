SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

docker-compose build
echo
docker image ls | grep -E 'my_helloworld_i|TAG'

# push onto docker hub
docker login

#            tag .               owner <- docker hub require this field
docker image tag my_helloworld_i 'namgivu/'my_helloworld_i
docker image push                'namgivu/'my_helloworld_i
