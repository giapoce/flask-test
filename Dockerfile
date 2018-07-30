FROM python:3.5-slim

MAINTAINER gianmarcoiapoce@gmail.com

USER root

EXPOSE 5000

WORKDIR /flask-app-2

ADD . /flask-app-2

RUN pip install -r requirements.txt

ENV REDIS_HOST flask-redis-eu-1.glgchy.ng.0001.euw1.cache.amazonaws.com

CMD ["python3", "app.py"]
