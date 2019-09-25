FROM ubuntu:18.04

RUN apt-get update

WORKDIR /usr/bin

COPY config/* ./

RUN chmod +x ./vault

CMD [ "./init_script.sh" ] 
