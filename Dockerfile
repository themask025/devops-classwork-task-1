# Setting the base image
FROM ubuntu:latest

RUN apt update -y
RUN apt install -y python3 python3-pip 

COPY . .

RUN pip3 install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/app.py"]
