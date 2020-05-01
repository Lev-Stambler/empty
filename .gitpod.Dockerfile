FROM gitpod/workspace-full
USER root
RUN sudo apt-get update \
    && sudo apt-get install -y \
        sudo \
    && sudo rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
