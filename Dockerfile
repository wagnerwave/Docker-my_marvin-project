FROM jenkins/jenkins:lts

COPY plugins.txt /usr/share/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/plugins.txt

EXPOSE 8080