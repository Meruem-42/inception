FROM debian:bullseye

# Install updates
RUN apt update && apt upgrade -y

# Install the required packages
# curl: outil en ligne de commande pour faire des requetes HTTP
# php: Installe le moteur php principal
# php-fpm: gestionnaire de processus php qui execute le php independamment, permet de faire tourner PHP en mode serveur
# php-mysql: extension php pour se connecter a une base de donnees MySQL
# mariadb-client: Permet d'utiliser la commande mariadb ou mysql pour se connecter à un serveur MariaDB distant.
RUN apt install -y curl php php7.4-fpm php-mysql mariadb-client

# Copier une fichier de mon contexte local vers le systeme de fichiers du conteneur
COPY ./wp_conf.sh /

# Change the permission of the script to make it executable
RUN chmod +x wp_conf.sh

# Execute the script when the container starts
ENTRYPOINT ["sh", "./wp_conf.sh"]
