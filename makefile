DOCKER_REPOSITORY := jaehyunlee

ABSOLUTE_PATH := $(shell pwd)

DOCKERFILE := Dockerfile
DOCKER_COMPOSE := docker-compose.yml
IMAGE_VERSION := 0.0.1

MODEL_DB := base
MODEL_LOAD_PATTERN_PORT := 8000


.PHONY: build
build:
	docker build \
		-t $(DOCKER_REPOSITORY)/$(MODEL_DB):$(IMAGE_VERSION) \
		-f $(DOCKERFILE) \
		.

.PHONY: c-up
c-up:
	docker-compose \
		-f ./$(DOCKER_COMPOSE) \
		up -d

.PHONY: c-down
c-down:
	docker-compose \
		-f ./$(DOCKER_COMPOSE) \
		down
