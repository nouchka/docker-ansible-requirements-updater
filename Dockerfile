FROM nouchka/ansible:latest
LABEL maintainer="Jean-Avit Promis docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-ansible-requirements-updater"

COPY ansible-requirements-updater/ /opt/ansible-requirements-updater/
COPY requirements.yml /data/requirements.yml

WORKDIR /opt/ansible-requirements-updater/
VOLUME /data/

CMD [ "ansible-playbook", "main.yml" , "-e", "requirements_file_path=/data/requirements.yml"]
