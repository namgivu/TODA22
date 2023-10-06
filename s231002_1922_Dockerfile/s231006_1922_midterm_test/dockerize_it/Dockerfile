FROM python

WORKDIR /app
COPY .  /app
#       WORKDIR
#    context_d

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade virtualenv

RUN rm -rf                .venv/
RUN python3 -m virtualenv .venv/

RUN ./.venv/bin/pip install -r requirements.txt
RUN ./.venv/bin/pip freeze

# inform docker that this container is serving at this port
EXPOSE 5000

CMD ./.venv/bin/python3 ./app.py
