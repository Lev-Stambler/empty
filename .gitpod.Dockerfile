FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y \
        sudo \
    && sudo rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
