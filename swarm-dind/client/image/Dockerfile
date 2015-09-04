FROM jpetazzo/dind

# Make sure the package repository is up to date.
RUN apt-get update
RUN apt-get -y upgrade

# Install JDK 7 (latest edition)
RUN apt-get install -y openjdk-7-jdk

RUN apt-get remove -y lxc-docker && \
    apt-get install -y lxc-docker-1.6.1

#Add startup script
ADD ./bin/start-jenkins-slave.sh /usr/bin/start-jenkins-slave.sh

ADD ./bin/wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker
RUN curl -O -sSL -o swarm-client.jar http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/2.0/swarm-client-2.0-jar-with-dependencies.jar

ENV LOG=file
ENV DOCKER_HOST=unix:///var/run/docker.sock
CMD ["start-jenkins-slave.sh"]
