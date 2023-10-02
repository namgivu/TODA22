FROM alpine

RUN echo '--- default WORKDIR' ; pwd

#    fr         to
#    local      container
#    context_d  default WORK_DIR defined by image in FROM above
COPY echo.txt   .

CMD cat echo.txt
