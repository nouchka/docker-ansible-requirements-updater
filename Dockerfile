FROM nouchka/ansible:latest

COPY ansible-requirements-updater/ /opt/ansible-requirements-updater/

WORKDIR /opt/ansible-requirements-updater/
VOLUME /data/
