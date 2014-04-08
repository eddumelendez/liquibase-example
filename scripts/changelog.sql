--liquibase formatted sql

--changeset nvoxland:1
create table person (
  id int not null primary key,
  firstname varchar(80),
  lastname varchar(80) not null,
  state varchar(2)
);

--rollback drop table person

--changeset nvoxland:2
alter table person add column username varchar(8)

--rollback alter table person drop column username

--changeset emelendez:3
alter table person add column password varchar(8)

--rollback alter table person drop column password