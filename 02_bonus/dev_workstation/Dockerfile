FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common git gcc-snapshot vim wget zsh valgrind && apt-get autoremove && apt-get autoclean

RUN adduser --disabled-password --gecos '' nathan
USER nathan
WORKDIR /home/nathan
RUN echo "set nu\nsyntax on\nset mouse=a\n" > .vimrc
