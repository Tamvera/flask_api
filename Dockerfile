FROM python:2

WORKDIR /src
RUN chmod -R 777 /src

USER 1001

COPY main.py /src/

RUN virtualenv ve

RUN ./ve/bin/pip install Flask

EXPOSE 8080

ENV FLASK_APP /src/main.py
ENTRYPOINT /src/ve/bin/flask run -p 8080
