FROM debian

ENV TS3SERVER_LICENSE accept
EXPOSE 9987/udp 30033 10011 41144

RUN cat /etc/hostname
RUN apt update
RUN apt install -y wget bzip2
RUN wget https://files.teamspeak-services.com/releases/server/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2
RUN tar -xvjf /teamspeak3-server_linux_amd64-3.5.0.tar.bz2

WORKDIR /teamspeak3-server_linux_amd64

CMD ["./ts3server_minimal_runscript.sh"]

# lancer le serveur avec la commande :
# docker run --rm -it --name teamspeak -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -p 41144:41144 ts