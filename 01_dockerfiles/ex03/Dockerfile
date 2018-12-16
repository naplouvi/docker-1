FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
# Omnibus + tzdata (fix bug timezone)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl openssh-server ca-certificates sudo postfix tzdata
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get install -y gitlab-ce

ENV EXTERNAL_URL=localhost
EXPOSE 80 22

# Run server en tache de fond puis reconfigure et logs dans un subshell

CMD ["bin/bash", "-c", "/opt/gitlab/embedded/bin/runsvdir-start & (gitlab-ctl reconfigure && gitlab-ctl tail)"]

# Pour le build
# docker build -t ex03 .

# Lancer avec :
# docker run -it --rm -p 80:80 -p 22:2222 ex03
