SHELL=/bin/bash
ELASTIC_REGISTRY=docker.elastic.co
ELASTICSEARCH_BASEIMAGE=$(ELASTIC_REGISTRY)/elasticsearch/elasticsearch-alpine-base:latest

export ELASTICSEARCH_BASEIMAGE

# Target for base image that every other elasticsearch image depends on

## Build alpine base image
build-elasticsearch-alpine-base:
	docker-compose build --pull elasticsearch-alpine-base

## Push base alpine image to the container-registry pubic repo
publish-elasticsearch-alpine-base: build-elasticsearch-alpine-base
	docker push $(ELASTICSEARCH_BASEIMAGE)
