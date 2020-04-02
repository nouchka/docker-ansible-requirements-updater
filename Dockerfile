FROM nouchka/ansible:latest
LABEL maintainer="Jean-Avit Promis docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-ansible-requirements-updater"

COPY ansible-requirements-updater/ /opt/ansible-requirements-updater/

WORKDIR /opt/ansible-requirements-updater/
VOLUME /data/
