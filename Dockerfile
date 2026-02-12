FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=capstone_db
ENV MYSQL_USER=administrator
ENV MYSQL_PASSWORD=administrator2026

EXPOSE 3307

# Acá copiamos el script SQL que inicializará la base de datos con las tablas y datos necesarios. El archivo init.sql debe estar en el mismo directorio que este Dockerfile.
COPY init.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]
