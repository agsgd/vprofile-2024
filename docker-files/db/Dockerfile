FROM mysql:8.0.33
LABEL Author="Gabbarsingh A"
LABEL project="vprofile"
ENV MYSQL_ROOT_PASSWORD="Gabbarsingh2024"
ENV MYSQL_DATABASE="accounts"
ADD db_backup.sql docker-entrypoint-initdb.d/db_backup.sql
