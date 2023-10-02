SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`  # SH aka SCRIPT_HOME aka containing folder of this script file
cd $SH

   build_context=`cd "$SH/../../zref/docker_basic/dockerfile-assignment-1" && pwd` \
build_dockerfile="$SH/Dockerfile" \
  docker-compose up --build
