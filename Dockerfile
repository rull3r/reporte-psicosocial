FROM ubuntu:jammy-20211029
ENV PYTHONUNBUFFERED=1
WORKDIR /sitioweb
COPY requirements.txt /sitioweb/
RUN apt-get update
RUN apt install -y build-essential zlib1g-dev \
    libncurses5-dev libgdbm-dev libnss3-dev \
    libssl-dev libreadline-dev libffi-dev curl software-properties-common
RUN apt install python3.9 -y
RUN pip install -r requirements.txt
RUN apt -y install texlive
COPY . /sitioweb/