FROM debian:bullseye

# Install updates
RUN apt update && apt upgrade -y

# Install nginx and TSL
RUN apt install -y nginx openssl

# Creates a directory pour un truc joli
RUN mkdir -p /etc/nginx/ssl

# Generate the ssl certificate
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=MO/ST=KH/L=KH/O=42/OU=42/CN=${DOMAIN_NAME}/UID=${WP_ADMIN_NAME}"

# Je met la config dans le conteneur
COPY ./nginx.conf /etc/nginx/nginx.conf

# Creates a nouveau directory pour un truc joli
RUN mkdir -p /var/www/wordpress

# change the owner of the wordpress directory to www-data
RUN chown -R www-data:www-data /var/www/wordpress

# Execute a command when the container starts
# nginx: launch the nginx program
# -g: gives a config directive to a command line
# daemon off: asks nginx not to turn in background
CMD ["nginx", "-g", "daemon off;"]
