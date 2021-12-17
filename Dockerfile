FROM python:3.9-slim-buster

ENV PYTHONUNBUFFERED=1
WORKDIR /sitioweb

COPY requirements.txt /sitioweb

RUN pip install -r requirements.txt

COPY . /sitioweb

RUN apt-get update \
    && apt-get install -y \
    texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /sitioweb