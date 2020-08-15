from ubuntu:latest

RUN apt-get upgrade

RUN apt update && apt install -y g++ \
    curl 

RUN apt install -y make 

RUN apt install -y gdb
