FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt-get update && \
    apt-get install -y --no-install-recommends micro && \
    rm -rf /var/lib/apt/lists/*

# Install OpenCode
RUN mkdir -p /tmp/opencode-install && \
    curl -fsSL https://opencode.ai/install | HOME=/tmp/opencode-install bash -s -- --version 1.18.32 --no-modify-path && \
    install -Dm755 /tmp/opencode-install/.opencode/bin/opencode /usr/local/bin/opencode && \
    rm -rf /tmp/opencode-install

# Install Hugo Extended
RUN mkdir -p /usr/local/hugo/bin && \
    curl -fsSLO --compressed "https://github.com/gohugoio/hugo/releases/download/v0.134.3/hugo_extended_0.134.3_linux-amd64.tar.gz" && \
    tar -xzf "hugo_extended_0.134.3_linux-amd64.tar.gz" -C /usr/local/hugo/bin && \
    rm "hugo_extended_0.134.3_linux-amd64.tar.gz" && \
    chmod -R 755 /usr/local/hugo

ENV PATH="/usr/local/hugo/bin:${PATH}"
