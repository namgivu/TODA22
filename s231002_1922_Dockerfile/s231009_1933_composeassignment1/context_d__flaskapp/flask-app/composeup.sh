SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH
  # docker-compose build --no-cache  # turn back on when needed the rebuild
  docker-compose build

  docker-compose up
