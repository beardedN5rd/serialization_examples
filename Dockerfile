FROM ubuntu:bionic

ARG flavor

ADD scripts /scripts
WORKDIR /scripts
RUN ./install_on_ubuntu.sh

ADD ${flavor}/ansible /IaC
WORKDIR /IaC
RUN ansible-playbook -i "localhost", -c local playbook.yml
