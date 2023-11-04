# Setting the base image
FROM ubuntu:latest

RUN apt update -y
RUN apt install -y python3 python3-pip 

RUN useradd -rm -d /home/python -s /bin/bash -g root -G sudo -u 1001 python 
USER python
WORKDIR /home/python

COPY . .

RUN pip3 install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/app.py"]
