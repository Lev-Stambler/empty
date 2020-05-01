FROM gitpod/workspace-full
USER root
RUN apt-get update
RUN apt-get install sudo

RUN adduser --disabled-password --gecos '' gitpod
RUN adduser gitpod sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER gitpod

# this is where I was running into problems with the other approaches
RUN sudo apt-get update
# Apply user-specific settings
