FROM ubuntu:bionic

ARG flavor

ADD scripts /scripts
WORKDIR /scripts
RUN ./install_on_ubuntu.sh

ADD examples/${flavor}/ansible /ansible
WORKDIR /ansible
RUN ansible-playbook -i "localhost", -c local playbook.yml
