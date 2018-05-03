FROM postgres:9.6

COPY init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
COPY tede.sql /docker-entrypoint-initdb.d/tede.sql

ENV POSTGRES_USER=tede
