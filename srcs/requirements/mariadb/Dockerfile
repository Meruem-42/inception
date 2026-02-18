FROM debian:bullseye

# Install last version
RUN apt update && apt upgrade -y

# Install mariadb and netcat (to launch mariadb before wordpress)
RUN apt install -y mariadb-server netcat

# Copie un fichier du contexte local vers l'interieur du conteneur
COPY ./mdb-conf.sh /mdb-conf.sh

# Give permission for running
RUN chmod +x /mdb-conf.sh

# Execute the .sh when the container starts
ENTRYPOINT ["./mdb-conf.sh"]
