FROM ubuntu:22.04

RUN apt-get update \
  && apt-get -y install \
    curl \
    npm \
    python3-pip \
    sudo
RUN npm install -g nushell
RUN pip install cargo-zigbuild

USER build

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

COPY entrypoint.nu /entrypoint.nu

ENTRYPOINT [ "/entrypoint.nu" ]
