FROM alpine

RUN echo 231002_2020  # add new timestamp to forced-rebuild from this line
RUN echo "Default WORKDIR: `pwd` "

#    fr         to
#    local      container
#    context_d  default WORK_DIR defined by image in FROM above
COPY echo.txt   .

CMD cat echo.txt
