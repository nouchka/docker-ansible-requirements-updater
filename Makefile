DOCKER_IMAGE=ansible-requirements-updater

include Makefile.docker

PACKAGE_VERSION=0.1
DEBVERSIONS=

include Makefile.package

check-version:
	docker run --rm --entrypoint md5sum $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) /opt/ansible-requirements-updater/main.yml

run:
	./bin/$(DOCKER_IMAGE) requirements.yml
