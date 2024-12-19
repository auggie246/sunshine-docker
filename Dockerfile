ARG SUNSHINE_VERSION=latest
ARG SUNSHINE_OS=ubuntu-22.04
FROM lizardbyte/sunshine:${SUNSHINE_VERSION}-${SUNSHINE_OS}

# install Steam, Wayland, etc.
RUN sudo apt-get update && \
    sudo apt-get install steam

ENTRYPOINT steam && sunshine
