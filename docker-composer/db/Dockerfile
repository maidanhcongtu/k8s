FROM library/postgres:9.5

ADD init.sql /docker-entrypoint-initdb.d/

#Set 'postgres' account's password
ENV POSTGRES_PASSWORD=postgres

EXPOSE 5432

CMD ["postgres"]