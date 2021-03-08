CREATE DATABASE military_management;

use military_management;



CREATE TABLE LOCATION (
	pincode int not null PRIMARY KEY
	check(100000<=pincode and pincode<=999999),
	district varchar(30) not null,
	state varchar(30) not null,
	country varchar(30) not null
	); 


CREATE TABLE BATALLIAN (
	batallion_name varchar(50) not null primary key,
	captain_id int not null,
	year int not null,
	total_capacity int not null
	);
	
	
CREATE TABLE SOLDIER (
	id int not null primary key,
	name varchar(50) not null,
	doj DATE not null,
	squadno varchar(50) not null references BATALLIAN(batallion_name),
	birth_pincode int not null references LOCATION(pincode),
	height int not null,
	weight int not null,
	chest int not null,
	sex char(1) not null check(sex='M' or sex='F'),
	dor DATE,
	dob DATE not null
	);


CREATE TABLE VISITED (
	soldier_id int not null references SOLDIER(id),
	pincode int not null references LOCATION(pincode),
	reason varchar(200) not null,
	visit_date DATE not null
	);

CREATE TABLE MEDAL (
	name varchar(50) not null primary key
	);
	
CREATE TABLE REWARD (
	name varchar(50) not null references MEDAL(name),
	id int not null references SOLDIER(id),
	year int not null check(year>=1000 and year<=5000)
	);
	



	
describe LOCATION;
describe BATALLIAN;
describe SOLDIER;
describe VISITED;
describe MEDAL;
describe REWARD;
	
drop database military_management;
