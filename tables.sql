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
	batallion_name varchar(50) not null PRIMARY KEY,
	captain_id int not null,
	year int not null,
	total_capacity int not null
	);
	
	
CREATE TABLE SOLDIER (
	id int not null PRIMARY KEY,
	name varchar(50) not null,
	doj DATE not null,
	squadno varchar(50) not null references BATALLIAN(batallion_name) on update cascade on delete cascade,
	birth_pincode int not null references LOCATION(pincode) on update cascade on delete cascade,
	height int not null,
	soldier_rank varchar(15) not null,
	weight int not null,
	chest int not null,
	sex char(1) not null check(sex='M' or sex='F'),
	dor DATE,
	dob DATE not null
	);


CREATE TABLE VISITED (
	soldier_id int not null references SOLDIER(id) on update cascade on delete cascade,
	pincode int not null references LOCATION(pincode) on update cascade on delete cascade,
	reason varchar(200) not null,
	visit_date DATE not null
	);


CREATE TABLE MEDAL (
	name varchar(50) not null PRIMARY KEY
	);
	
	
CREATE TABLE REWARD (
	name varchar(50) not null references MEDAL(name) on update cascade on delete cascade,
	id int not null references SOLDIER(id) on update cascade on delete cascade,
	year int not null check(year>=1000 and year<=5000)
	);
	


	
	
create table MANUFACTURING(
w_id int not null,
manufacturing_date date not null,
manufacturing_location varchar(50) not null,
name varchar(50) not null
);
create table COMPANY(
name varchar(50) not null references MANFACTURING(name),
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
	

create TABLE WORK (
type   varchar(80) primary key,
salary int not null
);

create table ASSIGN(
  sold_id int  references SOLDIER(ID)
    on delete cascade on update cascade,
  type varchar (80) not null references WORK(type)
  on delete cascade on update cascade,
  date date not null,
  primary key(sold_id,type)
  
);
create table WAR (
pincode varchar(6)  references LOCATION(pincode)
on delete cascade on update cascade,
status  int not null check (Status = 0 OR Status = 1 OR Status = 2),  /*0 for lost 1 for win 2 for undecisive*/
date    int not null,
strength int not null check (strength > 0),
unique(date),
primary key (pincode, date)
);

create table soldier_status (
sold_id    int references SOLDIER(id)
on update cascade on delete cascade,
alive       int not null,
wardate int not null,
pincode varchar(6) not null,
foreign key (wardate, pincode) references WAR(date, pincode)
on update cascade on delete cascade,
primary key (sold_id, wardate, pincode),
unique(sold_id, wardate, pincode)
);

create table REGISTER (
first_name varchar(100) not null,
last_name varchar(100) not null,
soldier_id int not null references SOLDIER(id),
email varchar(100) not null,
password varchar(100) not null check(char_length(password)>8),
phone_no varchar(15) not null,
soldier_rank varchar(10) not null references SOLDIER(soldier_rank),
primary key(email)
);



describe LOCATION;
describe BATALLIAN;
describe SOLDIER;
describe VISITED;
describe MEDAL;
describe REWARD;
describe MANUFACTURING;
describe COMPANY;
describe INVENTORY;
describe WEAPONS;
describe CATAGORY;
describe WORK;
describe ASSIGN;
describe WAR;
describe REGISTER;




drop database military_management;
