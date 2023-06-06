.PHONY: help build serve debug docker clean
.DEFAULT_GOAL := help

SHELL := /bin/bash

# Local Docker image tag
DOCKER_TAG := ninokin/craft:test

# Local web server port
DOCKER_PORT := 8090

# Current working directory
PWD := $(shell pwd)

# User ID for the current user
UID := $(shell id -u)

# Group ID for the current user
GID := $(shell id -g)

# Temporary directory
TEST_DIR := $(shell mktemp --directory --tmpdir craft.XXXXXXXXXX)

export DOCKER_BUILDKIT=1

# For more information on this technique, see
# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

help: ## Show this help message
	@echo -e "\nUsage: make TARGET\n\nTargets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

build: docker ## Build the Antora site
	@rm -rf site
	@mkdir site
	@docker run --rm -v "$(PWD)/site":/site --user $(UID):$(GID) --entrypoint cp $(DOCKER_TAG) -r /usr/share/nginx/html/. /site
	@echo "Generated documentation under 'site'."

serve: docker ## Preview the Antora site
	@echo "Starting a local wev server at http://localhost:$(DOCKER_PORT)"
	@echo -e "Type Ctrl+C to shut it down when you are done.\n"
	@docker run --rm  -p $(DOCKER_PORT):80 $(DOCKER_TAG)

debug: docker ## Start an interactive shell in the Antora site container
	@echo "Starting an interactive shell in th Antora site container..."
	@echo ""
	@echo "HTML assets can be found under /usr/share/nginx/"
	@echo "NGINX configuration files can be found under /etc/nginx"
	@echo ""
	@docker run --rm -it $(DOCKER_TAG) sh
