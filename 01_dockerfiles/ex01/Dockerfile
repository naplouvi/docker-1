FROM debian

RUN apt update && apt upgrade -y
RUN apt install wget bzip2 -y
RUN cd ~
RUN wget http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2
RUN tar xfv teamspeak3-server_linux_amd64-3.5.0.tar.bz2
RUN mv /teamspeak3-server_linux_amd64 /opt/teamspeak3
RUN rm -rf /teamspeak3-server_linux_amd64*

WORKDIR /opt/teamspeak3
EXPOSE 9987 30033 10011 41144

CMD ["./ts3server_minimal_runscript.sh"]