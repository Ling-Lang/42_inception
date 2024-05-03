FROM alpine:3.18

# Environmental variables 
ARG DB_NAME \
    DB_USER \
    DB_PASSWORD

RUN apk update && apk add --no-cache mariadb mariadb-client

# Copy custom MariaDB configuration files
COPY requirements/mariadb/my.cnf /etc/my.cnf.d/docker.cnf
COPY requirements/mariadb/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

# Initialize MariaDB data directory and database
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql && \
    chown -R mysql:mysql /var/lib/mysql

# Expose MariaDB default port
EXPOSE 3306

# Copy database initialization script and execute it
COPY requirements/mariadb/tools/db.sh /
RUN /bin/sh /db.sh && rm /db.sh

# Switch to non-root user
USER mysql

# Start MariaDB server
CMD ["/usr/bin/mysqld"]

