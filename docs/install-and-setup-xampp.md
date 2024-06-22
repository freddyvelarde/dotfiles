```yml
version: '3.8'

services:
  web:
    image: php:7.4-apache
    container_name: web
    ports:
      - "8080:80"
    volumes:
      - ./htdocs:/var/www/html
    networks:
      - my-network

  db:
    image: mysql:5.7
    container_name: db
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword
      MYSQL_DATABASE: mydb
      MYSQL_USER: user
      MYSQL_PASSWORD: userpassword
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - my-network

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    container_name: phpmyadmin
    restart: always
    environment:
      PMA_HOST: db
      PMA_USER: root
      PMA_PASSWORD: rootpassword
      MYSQL_ROOT_PASSWORD: rootpassword
    ports:
      - "8081:80"
    depends_on:
      - db
    networks:
      - my-network

volumes:
  db_data:

networks:
  my-network:
    driver: bridge
```

This ensures phpMyAdmin connects to the MySQL server with the root user.
Step 2: Restart Docker Containers

Stop and remove any existing containers, then start them again with the updated configuration:

bash

docker-compose down
docker-compose up -d

Step 3: Log In to phpMyAdmin

    Open your web browser and navigate to http://localhost:8081.
    Log in with the MySQL root user:
        Username: root
        Password: rootpassword

Step 4: Grant Full Privileges

If you still encounter privilege issues, you might need to grant full privileges to the root user explicitly.

    Access the MySQL container:

    bash

```sh
docker exec -it db bash
```

Log in to MySQL as the root user:

bash

```sh
mysql -u root -p
```

Enter the root password (e.g., rootpassword).

Grant all privileges to the root user:

sql

```sql
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

Exit MySQL and the container:

sql

exit

bash

    exit


