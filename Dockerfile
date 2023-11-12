# Setting the base image
FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add python3 py3-pip python3-dev

COPY . .

RUN pip3 install -r src/requirements.txt

EXPOSE 5000

CMD ["python3", "src/app.py"]
