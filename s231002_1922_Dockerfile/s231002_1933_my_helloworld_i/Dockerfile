FROM alpine

RUN echo 231002_2020  # add new timestamp to forced-rebuild from this line
RUN echo "Default WORKDIR: `pwd` "

#    fr         to
#    local      container
#    context_d  default WORKDIR defined by image :alpine in FROM above
#    $SH        /
COPY echo.txt   .

CMD cat echo.txt
