FROM ghcr.io/ublue-os/fedora-toolbox:latest

RUN rpm --import https://downloads.1password.com/linux/keys/1password.asc

COPY 1password.repo /etc/yum.repos.d/

RUN dnf -y install 1password 1password-cli && \
    dnf clean all
