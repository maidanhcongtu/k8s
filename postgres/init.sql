CREATE USER admin WITH PASSWORD 'admin' SUPERUSER CREATEDB CREATEROLE;

CREATE DATABASE avatar_team;
GRANT ALL PRIVILEGES ON DATABASE filemanager TO admin;
GRANT ALL PRIVILEGES ON DATABASE filemanager TO postgres;

\c avatar_team;

create table team_member (ID  
	bigserial not null,
 	name varchar(100),
 	primary key (ID)
);

insert into team_member(name) values	
	('Nguyen Van A'), 
	('Nguyen Van B'), 
	('Nguyen Van C'); 