FROM jenkins/jenkins:lts

ENV JENKINS_CONFIG="var/jenkins_home/jenkins.yml"
COPY jenkins.yml ${JENKINS_CONFIG}
COPY plugins.txt /usr/share/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/plugins.txt
