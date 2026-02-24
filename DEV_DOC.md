# DEVELOPER DOCUMENTATION

### Set Up Dependencies

- Make sure the following are installed:
    - `docker`
    - `docker compose`
    - `make`

- Create and fill the environment variables file (.env) in /srcs/.env
```bash
WORDPRESS_ADMIN_USER=admin
WORDPRESS_USER=user
WORDPRESS_ADMIN_PASSWORD=your_admin_password_here
WORDPRESS_USER_PASSWORD=your_user_password_here
```



- Create and fill the following secret files:

  - `secrets/mdb_password.txt`
  - `secrets/mdb_root_password.txt`

  Each file must contain only the raw secret value.

  Example:

  ```bash
  your_db_password
  ```

### Dev Command Manual

- Create database host directories, build images and run containers :
```bash
make up
# 	@mkdir -p $(WP_DATA)
#	@mkdir -p $(DB_DATA)
#	$(COMPOSE) -f $(COMPOSE_FILE) up --build -d
```

- Shutdown the containers :
```bash
make down
#	$(COMPOSE) -f $(COMPOSE_FILE) down
```

- Remove all dependencies of the website (host databases and volumes, images and containers, docker network) :
```bash
make clean
#	docker rm -f wordpress mariadb nginx || true
#	docker rmi -f wordpress:user mariadb:user nginx:user || true
#	docker volume rm wordpress mariadb || true
#	docker network rm inception || true
#	rm -rf $(WP_DATA)
#	rm -rf $(DB_DATA)
```

- Reset all the project and dependencies:
```bash
make re
#    re: clean all
```

- Check the logs of each running containers:
```bash
make logs
#	docker compose logs -f
```

### Management of Containers and Volume

- Check containers status:
```bash
make ps
#	docker compose ps
```

- List all existing Docker volumes:
```bash
make ls
#	docker volume ls
```

### Data Storage

Persistent data is stored on the host machine in:

`/home/aherlaud/data`

This persistence is achieved through Docker volumes that map container directories
to host directories.

The Makefile ensures that these directories are not removed unless
`make clean` is executed.