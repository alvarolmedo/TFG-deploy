FROM jenkins/jenkins:lts

# Installing docker via apt
USER root
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates wget software-properties-common sudo
RUN wget https://download.docker.com/linux/debian/gpg 
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD:ALL" | tee -a /etc/sudoers
RUN apt-key add gpg
RUN rm -f gpg
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee -a /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce
RUN usermod -aG docker jenkins
RUN touch /var/run/docker.sock
RUN chown root:jenkins /var/run/docker.sock
# drop back to the regular jenkins user - good practice
USER jenkins

