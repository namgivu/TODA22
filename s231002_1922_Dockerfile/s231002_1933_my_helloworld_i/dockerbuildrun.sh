SH=`cd $(dirname ${BASH_SOURCE:-$0}) && pwd`
cd $SH

docker build \
    -t my_helloworld_i `# -t, --tag list Name and optionally a tag  ref docker build --help` \
    .                  `# context folder aka context_d  #TODO what is context_d `

#TODO 2nd way to build using image-build in yml

docker run my_helloworld_i
