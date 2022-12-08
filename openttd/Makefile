# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help build up stop rm login

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

.ONESHELL:
build: ## Build the container
	docker compose -f .docker/docker-compose.yml build

up: ## Spin up the project
	docker compose -f .docker/docker-compose.yml up -d --force-recreate

stop: ## Stop running containers
	docker compose -f .docker/docker-compose.yml stop

rm: stop ## Stop and remove running containers
	docker compose -f .docker/docker-compose.yml down --rmi all

login: ## Login to the workspace of the project
	docker exec -it -u openttd openttd bash
