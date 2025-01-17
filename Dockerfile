FROM python:3.9.7

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /TestRoBotbyme
WORKDIR /TestRoBotbyme
CMD python3 main.py
