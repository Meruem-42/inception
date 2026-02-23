*This project has been created as part of the 42 curriculum by <aherlaud>*

# Description

• A “Description” section that clearly presents the project, including its goal and a brief overview.

This project aims to broaden knowledge of system administration by using Docker.
The goal is to virtualize several Docker images, creating them in a virtual machine.


# Instruction

A makefile is present here are the commands possible :
- up : 
    create related volumes local databases (wordpress and mariadb)
    build related images for the 3 containers (nginx, wordpress and mariadb)
    run (up) the images together with the docker_compose.yaml instructions
- down
    shutdown (down) the containers
- clean
    down (see command down)
    remove containers
    remove images
    remove volumes
    remove network
    remove local volume database location
- re
    clean (see command clean)
    up (see command up)
    
# Ressources

https://nginx.org/en/docs/ : nginx doc
https://docs.docker.com/ : docker doc
https://docs.docker.com/compose/ : docker compose doc
https://mariadb.com/docs/ : mariadb doc
https://hub.docker.com/_/wordpress : doc wordpress for docker
https://www.php.net/docs.php : manual php

AI was used : Documentation, testing

# PROJECT DESCRIPTION

## Key components

Docker : Docker is an application used in projects and DevOps evironment to normalize and isolate dependencies of a particular program/application permitting to change environment and still having expected results

Image : Docker components indicating how the container using this image should behave. It install dependencies, move files, execute commands to create an expected result. Dockerfile are used to create these images

Container : Special environment that will run and isolate the set of rules and behavior set by the image it inherit from

Compose : a special set of rules that will indicate and connect how containers should work between them

Main design has been followed related to the subject structure screenshot showed.

## Comparison

### Virtual Machines vs Docker
Virtual Machines are virtual environment that the full OS including it's own kernel making it heavier but better isolated. On the contrary docker create containers that are processes that run on the host kernel which makes it lightweight and more efficient.
For the use case of each VMs are better to isolate completly environment for different OS and docker works perfectly for application level isolation.

### Secrets vs Environment Variables
Environment variables store configuration values (like API URLs or feature flags) directly in the container environment, but they can be exposed through logs or process inspections. Secrets are designed for sensitive data (like passwords and tokens) and are stored securely, typically encrypted and accessed only when needed. In production environments, secrets provide stronger security and better access control than plain environment variables.

### Docker Network vs Host Network
A Docker bridge network creates an isolated internal network where containers communicate with each other using private IPs. The host network mode removes network isolation and allows a container to share the host’s networking stack directly, improving performance but reducing isolation. Bridge networks are safer and more commonly used, while host networking is useful for high-performance or low-latency needs.

### Docker Volumes vs Bind Mounts
Docker volumes are managed by Docker and stored in a dedicated location on the host, making them portable and easier to back up or migrate. Bind mounts link a specific host directory or file into a container, giving more direct control but less abstraction. Volumes are generally preferred for production data, while bind mounts are often used in development for live file syncing.