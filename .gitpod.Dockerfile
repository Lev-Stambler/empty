FROM gitpod/workspace-full
USER root
RUN apt-get update && \
      apt-get -y install sudo
RUN brew install docker
RUN sudo groupadd docker
RUN sudo usermod -aG docker $(whoami)
RUN sudo service docker start

USER root
