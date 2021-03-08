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
	
create table manufacturing(
w_id int not null,
manufacturing_date date not null,
manufacturing_location varchar(50) not null,
name varchar(50) not null
);
create table COMPANY(
name varchar(50) not null references manufacturing(name),
class varchar(50) null
);


create table INVENTORY(
w_id int not null,
ID int not null references SOLDIER(ID)
);
create table WEAPONS(
W_id int not null references INVENTORY(w_id),
name varchar(50) not null,
primary key(name)
);

 create table CATAGORY (
 name varchar(50) not null references WEAPONS(name),
 class varchar(50) not null
 );
	
describe LOCATION;
describe BATALLIAN;
describe SOLDIER;
describe VISITED;
describe MEDAL;
describe REWARD;
	
drop database military_management;
