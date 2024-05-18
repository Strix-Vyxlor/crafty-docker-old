FROM fedora:39

USER root
WORKDIR /root

RUN dnf install java-11-openjdk java-17-openjdk git -y
RUN git clone https://gitlab.com/Strix-Vyxlor/crafty-installer-4.0.git

WORKDIR /root/crafty-installer-4.0

COPY config.json .
RUN ./install_crafty.sh

VOLUME /var/opt/minecraft/crafty

USER crafty
WORKDIR /var/opt/minecraft/crafty
ENTRYPOINT echo "Y" | ./update_crafty.sh && ./run_crafty.sh
