DOCKER_IMAGE=ansible-requirements-updater
VERSIONS=

include Makefile.docker

PACKAGE_VERSION=0.1
DEBVERSIONS=

include Makefile.package

check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) dpkg-query --showformat='$${Version} ' --show $(DOCKER_IMAGE)

deb:
	mkdir -p build/usr/sbin/
	cp -Rf bin/* build/usr/sbin/

run:
	./bin/$(DOCKER_IMAGE) --version

install:
	install bin/ansible-requirements-updater $(prefix)/bin/ansible-requirements-updater
