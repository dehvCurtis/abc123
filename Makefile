include .env # env vars

default: build

build:
	docker-compose build && docker-compose up