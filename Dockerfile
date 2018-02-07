FROM python:2

WORKDIR /src

COPY main.py /src/

RUN pip install Flask

RUN chmod -R 777 /src

EXPOSE 8080

ENV FLASK_APP /src/main.py
ENTRYPOINT /usr/local/bin/flask run -p 8080
