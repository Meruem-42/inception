# USER DOCUMENTATION

### Services & Application
*The application provided is a fully dynamic wordpress website. It involves a server and a database to store website files and other contents persistent of the website(comments, user, ...)*

### User Manual

Launch the website :
```bash
make up
```

Shutdown the website :
```bash
make down
```

Remove all dependencies of the website (database, docker objects, ...) :
```bash
make clean
```


### Access Website
[access the website here](https://localhost:443)

### Administration Panel
[access the administration panel](https://localhost:443/wp-admin)


### Credentials
Credentials are stored in the environment file (.env) on your local machine
- Example variables:
```bash
WORDPRESS_ADMIN_USER=admin
WORDPRESS_USER=user
WORDPRESS_ADMIN_PASSWORD=your_admin_password_here
WORDPRESS_USER_PASSWORD=your_user_password_here
```

### Debugging & Logs

- Check that the containers are all running:
```bash
make ps
```

- Check that each services has started and are running correctly:
```bash
make logs
```