SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

# docker-compose build  #NOTE we need build before up, why? In reallife project, we run the container on the cloud <- the dokerimage is ready and push onto dockerhub --> need build it first
echo

   context="$SH/../../dockerize_it/context_d--flask_webapp" \
dockerfile="$SH/../../dockerize_it/Dockerfile" \
docker-compose up -d

sleep 2
echo
docker-compose logs
echo
docker-compose ps
