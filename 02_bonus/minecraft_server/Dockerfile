FROM ubuntu:16.04

ENV JAVA_OPTIONS=Xmx512M

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get -y update
RUN apt-get -y install openjdk-7-jre default-jre default-jdk wget
RUN mkdir /minecraft

RUN wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar -O /minecraft/minecraft_server.1.13.jar

WORKDIR /data
VOLUME /data

EXPOSE 25565

# Accept Minecraft EULA et start Minecraft server
CMD echo eula=true > /data/eula.txt && java -jar /minecraft/minecraft_server.1.13.jar

# Build avec : docker build -t minecraft .
# Lancer avec : docker run -it --rm -p 25565:25565 minecraft
# La connexion en jeu se fait sur 127.0.0.1:25565
