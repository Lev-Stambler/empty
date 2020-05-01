FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN brew install fzf

RUN sudo apt-get update \
    && sudo apt-get install -y \
        ... \
    && rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
