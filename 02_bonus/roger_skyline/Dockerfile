FROM debian

# update et installation des packets utiles
RUN apt -y update && apt -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt install -y vim sudo net-tools iptables-persistent fail2ban sendmail apache2 git

# creation d'un user et changement de mdp
RUN useradd roger
RUN echo "roger:password" | chpasswd
RUN adduser roger sudo

# modification des regles ssh
COPY sshd_config /etc/ssh/sshd_config

# Fichier iptables
COPY iptables /etc/network/if-pre-up.d/iptables
RUN chmod +x /etc/network/if-pre-up.d/iptables

# DOS protection
COPY jail.local /etc/fail2ban/jail.local
COPY http-get-dos.conf /etc/fail2ban/filter.d/http-get-dos.conf

# Scripts
COPY update_script.sh /home/roger/update_script.sh
COPY watch_script.sh /home/roger/watch_script.sh
COPY crontab /etc/crontab

RUN chmod +x /home/roger/update_script.sh && chmod +x /home/roger/watch_script.sh
RUN cp /etc/crontab /home/roger/tmp
RUN echo "Crontab mis a jour" > email.txt

# Web part
RUN git clone https://github.com/naplouvi/roger-skyline.git /var/www/html/rogerskyline

COPY roger-skyline.com.key /etc/ssl/private/roger-skyline.com.key
COPY roger-skyline.com.crt /etc/ssl/certs/roger-skyline.com.crt

RUN rm -rf /etc/apache2/site-enabled/default-ssl.conf
COPY default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN apachectl configtest
RUN a2enmod ssl
RUN a2ensite default-ssl
RUN a2ensite 000-default.conf


EXPOSE 80 443 2222

