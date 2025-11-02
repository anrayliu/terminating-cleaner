VERSION ?= 0.2.0
PROJECT_NAME := terminating-cleaner

.PHONY: apply clean

apply:
	@helm package . --version $(VERSION) -d releases/
	@helm install $(PROJECT_NAME) releases/$(PROJECT_NAME)-$(VERSION).tgz

clean:
	@helm uninstall $(PROJECT_NAME) || true
