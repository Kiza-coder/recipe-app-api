FROM python:3.7alpine
MAINTAINER Bruxelles dev app

ENV PYTHONUNBUFFERED 1

COPY ./requirements requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN add user -D user
USER user