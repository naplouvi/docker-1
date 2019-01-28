FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common git gcc-snapshot vim wget zsh valgrind && apt-get autoremove && apt-get autoclean

RUN adduser --disabled-password --gecos '' nathan
USER nathan

WORKDIR /home/nathan

ONBUILD COPY . /home/nathan
ONBUILD RUN gcc -Wall -Werror -Wextra *.c

RUN echo "set nu\nsyntax on\nset mouse=a\n" > .vimrc

# build avec : docekr build -t naplouvi/workdev .

