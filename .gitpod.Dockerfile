FROM gitpod/workspace-full

RUN su - && apt-get update \
    && apt-get install -y \
        sudo \
    && rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
