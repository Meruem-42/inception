FROM debian:bullseye

# Install last version
RUN apt update && apt upgrade -y

# Install mariadb and netcat (to launch mariadb before wordpress)
RUN apt install -y mariadb-server netcat

# Copie un fichier du contexte local vers l'interieur du conteneur
COPY ./tools/script_mdb.sh /script_mdb.sh

# Give permission for running
RUN chmod +x /script_mdb.sh

# Execute the .sh when the container starts
ENTRYPOINT ["./script_mdb.sh"]
