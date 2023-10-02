FROM node

WORKDIR /app

RUN echo "WORKDIR at `pwd`"

COPY .          .
#    .          /app
#    fr         to
#    context_d  WORKDIR ie /app
#    local      container

# announce docker engine what ports this container is serving
EXPOSE                               3000  

CMD echo 'Running nodejs app at port 3000' ; \
    npm i ; npm run start                  ; \
    echo 
