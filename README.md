*This project has been created as part of the 42 curriculum by <aherlaud>*

# Description

***This project aims to broaden knowledge of system administration by using Docker.
The goal is to virtualize several Docker images, combining them via compose and containers creating them in a virtual machine.***


# Instruction

A makefile is present here are the commands possible :
``` bash
make up
```
- Create related volumes databases on the host
- Build related images for the containers
- Run (up) the containers together with the docker-compose.yaml instructions

``` bash
make down
```
- Shutdown (down) the containers

``` bash
make clean
```
- Down (see make down)
- Remove containers
- Remove images
- Remove volumes
- Remove network
- Remove volume database on the host

``` bash
make re
```
- Clean (see command make clean)
- Up (see command make up)
    
# Ressources

[here is doc nginx](https://nginx.org/en/docs/)
[here is doc docker](https://docs.docker.com/)
[here is doc docker compose](https://docs.docker.com/compose/)
[here is doc mariadb](https://mariadb.com/docs/)

AI was used : Documentation, testing

# PROJECT DESCRIPTION

## Key components

***Docker*** : Docker is a platform that uses containers to package, isolate, and manage the dependencies of an application, ensuring it runs consistently across different environments

***Image*** : A Docker image is a template that defines how a container should behave, including installed dependencies, files, and commands. Images are usually built from a Dockerfile.

***Container*** : A container is a running instance of a Docker image that isolates an application and its environment from the host system, executing the behavior defined by the image.

***Compose*** : A tool for defining and running multi-container Docker applications using a YAML file that specifies how containers should interact, and other configuration.

Main design has been followed related to the subject structure screenshot showed.

## Comparison

#### Virtual Machines vs Docker
Virtual Machines are virtual environment with a full OS including it's own kernel making it heavier but better isolated. On the contrary docker create containers that are processes that run on the host kernel which makes it lightweight and more efficient.
For the use case of each VMs are better to isolate completly environment for different OS and docker works perfectly for application level isolation.

#### Secrets vs Environment Variables
Secrets and environment variables are used for the same purpose: storing data for the container to work properly. The main difference is how Docker handles each option. Environment variables are directly injected into the environment of the container. On the other hand, secrets are handled more carefully, limiting the services that can access them and minimizing their exposure.

#### Docker Network vs Host Network
The Docker Network option creates a bridge network with its own private IP, which makes it more isolated and secure. In contrast, the Host Network option shares the host network with the container, making it faster due to the absence of NAT/bridge overhead. The tradeoff revolves around flexibility and security/isolation (Docker Network) versus high performance (Host Network).

#### Docker Volumes vs Bind Mounts
Docker volumes are managed by Docker and stored in a dedicated location on the host chosen by Docker, making them portable and easier to back up or migrate. Bind mounts link a specific host directory or file into a container, giving more direct control but less abstraction.