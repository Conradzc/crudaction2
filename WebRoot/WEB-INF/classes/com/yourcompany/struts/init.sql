create database struts character set utf8;

use struts;

create table tb_person(
	id integer auto_increment,
	account varchar(255),
	name varchar(255),
	birthday date,
	create_date timestamp,
	secret bit,
	primary key (id));

create table tb_hobby(
	persion_id integer,
	hobby varchar(255),
	primary key (persion_id,hobby));