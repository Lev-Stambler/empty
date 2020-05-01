FROM gitpod/workspace-full
USER root
RUN apt-get update && \
      apt-get -y install sudo
RUN brew install docker
RUN groupadd docker
RUN newgrp gitpod
USER gitpod
RUN newgrp docker
USER root
RUN service docker start
USER root
