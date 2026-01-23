COMPOSE = docker compose
COMPOSE_FILE = ./srcs/docker-compose.yml

.PHONY: up down build restart logs ps

up:
	$(COMPOSE) -f $(COMPOSE_FILE) up -d

down:
	$(COMPOSE) -f $(COMPOSE_FILE) down

build:
	$(COMPOSE) -f $(COMPOSE_FILE) build

re: down build up

logs:
	$(COMPOSE) -f $(COMPOSE_FILE) logs -f

ps:
	$(COMPOSE) -f $(COMPOSE_FILE) ps
