SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH
docker-compose up
