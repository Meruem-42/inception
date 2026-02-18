COMPOSE = docker compose
COMPOSE_FILE = ./srcs/docker-compose.yml
WP_DATA = /home/aherlaud/data/wordpress
DB_DATA = /home/aherlaud/data/mariadb

.PHONY: up down build restart logs ps

all : up

up:
	@mkdir -p $(WP_DATA)
	@mkdir -p $(DB_DATA)
	$(COMPOSE) -f $(COMPOSE_FILE) up --build -d

down:
	$(COMPOSE) -f $(COMPOSE_FILE) down

clean : down
	docker rm -f wordpress mariadb nginx || true
	docker rmi -f wordpress:user mariadb:user nginx:user || true
	docker volume rm wordpress mariadb || true
	docker network rm inception || true
	rm -rf $(WP_DATA)
	rm -rf $(DB_DATA)

re: clean all

logs:
	$(COMPOSE) -f $(COMPOSE_FILE) logs -f

ps:
	$(COMPOSE) -f $(COMPOSE_FILE) ps
