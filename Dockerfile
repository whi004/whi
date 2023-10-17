FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev -y
RUN TOKEN="abd60be41843581a64b7f0c7c902395a767431361c61474764" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`". && ~/.buildkite-agent/bin/buildkite-agent start
