include .env


default: build

build:
	docker-compose build && docker-compose up