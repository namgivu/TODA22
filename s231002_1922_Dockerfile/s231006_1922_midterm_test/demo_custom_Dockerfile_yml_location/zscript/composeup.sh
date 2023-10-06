SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`

cd "$SH/../sample_context_d"  # cd here to make 'context: .' choose this folder as context_d

set -e  # halt if err -> build fail wont run up

#NOTE doesnt matter where pwd/current dir is, it will seek yml file in outer folder(s)

docker-compose build
echo
docker-compose up
