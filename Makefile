# Image-only install. No git checkout required on the server.
#   make up
#   make status
#   make down

.PHONY: help env pull up down restart status logs ps clean purge

SVC ?=

help:
	@./easyprint help

env:
	@./easyprint env

pull:
	@./easyprint pull

up:
	@./easyprint up

down:
	@./easyprint down

restart:
	@./easyprint restart

status:
	@./easyprint status

logs:
	@./easyprint logs $(SVC)

ps:
	@./easyprint ps

clean:
	@./easyprint clean

purge:
	@./easyprint purge
