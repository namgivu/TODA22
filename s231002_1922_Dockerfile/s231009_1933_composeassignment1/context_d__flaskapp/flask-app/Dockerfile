FROM python

WORKDIR /app
COPY .  /app

#region flaskapp install package
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade virtualenv

RUN rm -rf                .venv/
RUN python3 -m virtualenv .venv/

RUN ./.venv/bin/pip install -r requirements.txt
RUN ./.venv/bin/pip freeze
#endregion flaskapp install package

#CMD ls -lah
CMD  ./.venv/bin/python ./app.py
