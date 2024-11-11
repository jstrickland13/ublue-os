FROM ghcr.io/ublue-os/aurora-dx:stable
COPY vscode.repo /etc/yum.repos.d/vscode.repo
COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
