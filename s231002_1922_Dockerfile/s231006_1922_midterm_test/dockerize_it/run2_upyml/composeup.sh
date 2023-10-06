SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

# docker-compose build  #TODO do we need build before up?
echo

   context="$SH/../../dockerize_it/context_d--flask_webapp" \
dockerfile="$SH/../../dockerize_it/Dockerfile" \
docker-compose up -d

sleep 2
echo
docker-compose logs
echo
docker-compose ps
