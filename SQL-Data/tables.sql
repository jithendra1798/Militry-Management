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
	regiment varchar(50) not null,
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
	
	
create table REWARD(
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
name varchar(50) not null references MANFACTURING(name)
 on delete cascade on update cascade,
class varchar(50) null
);


create table INVENTORY(
w_id int not null,
ID int not null references SOLDIER(ID)
on delete cascade on update cascade
);

create table WEAPONS(
W_id int not null references INVENTORY(w_id)
 on delete cascade on update cascade,
name varchar(50) not null,
primary key(name)
);

 create table CATAGORY (
 name varchar(50) not null references WEAPONS(name)
  on delete cascade on update cascade,
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
  primary key(sold_id,type)
  
);
create table WAR (
pincode varchar(6)  references LOCATION(pincode)
on delete cascade on update cascade,
status  int not null check (Status = 0 OR Status = 1 OR Status = 2),  /*0 for lost 1 for win 2 for undecisive*/
wardate date not null,
unique(wardate),
primary key (pincode, wardate)
);

create table soldier_status (
sold_id int references SOLDIER(id)
on update cascade on delete cascade,
alive int not null,
wardate date not null,
pincode varchar(6) not null,
foreign key (wardate, pincode) references WAR(wardate, pincode)
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

CREATE VIEW General as
	
	select
	SOLDIER.name as Soldier,
	SOLDIER.soldier_rank as Ranking,
	SOLDIER.dob,
	SOLDIER.sex,
	SOLDIER.height,
	SOLDIER.weight,
	REWARD.name as Reward,
	REWARD.year as 'Rewarded on',
	BATALLIAN.batallion_name,
	BATALLIAN.year as 'Year in Batallian'	
	
	from BATALLIAN,SOLDIER,REWARD
	
	where REWARD.id = SOLDIER.id and BATALLIAN.batallion_name = SOLDIER.squadno;

describe General;

CREATE VIEW Weapons as
	select 
	WEAPONS.name as Weapon,
	MANUFACTURING.manufacturing_date'MFG Date',
	MANUFACTURING.manufacturing_location as 'Manufactured in',
	MANUFACTURING.name as Manufacturer
	
	from WEAPONS,MANUFACTURING
	
	where WEAPONS.W_id = MANUFACTURING.w_id;
	

describe Weapons;








INSERT INTO LOCATION VALUES (521002,'Krishna','Andhra Pradesh','India');
INSERT INTO LOCATION VALUES (500001,'Hyderabad','Telangan','India');
INSERT INTO LOCATION VALUES (520001,'Vijayawada','Andhra Pradesh','India');
INSERT INTO LOCATION VALUES (521001,'Krishna','Andhra Pradesh','India');
INSERT INTO LOCATION VALUES (521156,'Krishna','Andhra Pradesh','India');

INSERT INTO ASSIGN(sold_id, type) VALUES ('19339', 'Soldier');
INSERT INTO ASSIGN(sold_id, type) VALUES ('33998', 'Soldier');
INSERT INTO ASSIGN(sold_id, type) VALUES ('49159', 'Major General');
INSERT INTO ASSIGN(sold_id, type) VALUES ('21474', 'Field Marshal');
INSERT INTO ASSIGN(sold_id, type) VALUES ('12498', 'Soldier');
INSERT INTO ASSIGN(sold_id, type) VALUES ('14298', 'Lieutenant General');


INSERT INTO WORK (type, salary) Values ('Soldier', '23000');
INSERT INTO WORK (type, salary) Values ('Havildar', '12000');
INSERT INTO WORK (type, salary) Values ('Lieutenant', '56100');
INSERT INTO WORK (type, salary) Values ('Field Marshal', '250000');
INSERT INTO WORK (type, salary) Values ('Lieutenant General', '225000');
INSERT INTO WORK (type, salary) Values ('Major General', '144200');


  
Insert into WAR (status,pincode,wardate) VALUES(1,382429,'2003-03-17');
Insert into WAR (status,pincode,wardate) VALUES(0,382425,'1995-10-01');
Insert into WAR (status,pincode,wardate) VALUES(1,382427,'1997-07-25');
Insert into WAR (status,pincode,wardate) VALUES(1,382423,'2000-05-13');
Insert into WAR (status,pincode,wardate) VALUES(0,382423,'2003-09-29');
Insert into WAR (status,pincode,wardate) VALUES(0,382426,'2002-04-10');


INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(12398,01,'2003-03-17','382429');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(13424,01,'1995-10-01','382425');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(28613,01,'1997-07-25','382427');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(13011,01,'2000-05-13','382423');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(12300,01,'2003-09-29','382423');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(14256,0,'2002-04-10','382426');


INSERT INTO SOLDIER (id,name,soldier_rank,doj,dob,dor,squadno,birth_pincode,sex,height,weight,chest) VALUES 
  (19339,'Arjun Pratap','Soldier','2012-4-15','1987-5-23','2059-8-20','Sikh Regiment',382436,'M',176,70,40); 
INSERT INTO SOLDIER (id,name,soldier_rank,doj,dob,dor,squadno,birth_pincode,sex,height,weight,chest) VALUES
  (33998,'Karan Jagtap','Soldier','2008-5-16','1982-5-23','2049-4-21','Sikh Regiment',382427,'M',179,76,39);
  INSERT INTO SOLDIER (id,name,soldier_rank,doj,dob,dor,squadno,birth_pincode,sex,height,weight,chest) VALUES
  (13423,'Jaspreet Singh Kaur','Soldier','2010-9-24','1985-9-9','2054-4-17','Sikh Regiment',382426,'M',182,75,40);
  INSERT INTO SOLDIER (id,name,soldier_rank,doj,dob,dor,squadno,birth_pincode,sex,height,weight,chest) VALUES
  (49159,'Vijay Kumar Ahirwar','Major General','2011-3-15','1983-4-27','2020-3-21','Sikh Regiment',382427,'M',176,70,40);
  INSERT INTO SOLDIER (id,name,soldier_rank,doj,dob,dor,squadno,birth_pincode,sex,height,weight,chest) VALUES (29603,'Rohan Dhoot','Soldier','2005-6-21','1987-8-24','2012-5-17','Sikh Soldier',382429,'M',182,76,37);


INSERT INTO WEAPONS (W_id,name) VALUES (1053, 'Glock-18');
INSERT INTO WEAPONS (W_id,name) VALUES (1054, 'Dual Berettas');
INSERT INTO WEAPONS (W_id,name) VALUES (1055, 'P250');
INSERT INTO WEAPONS (W_id,name) VALUES (1056, 'Tec-9');
INSERT INTO WEAPONS (W_id,name) VALUES (1057, 'CZ75-Auto');
INSERT INTO WEAPONS (W_id,name) VALUES (1058, 'Desert Eagle');


insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('a','Madras Regiment', 13011, 1992,20);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('b','Madras Regiment',27989,2013,25);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('c','Rajputana Rifles' ,14255,1996,18);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('d','Rajputana Rifles' ,14256,2010,22);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('e''Sikh Regiment',12402,1980,15);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('e','Sikh Regiment',11046,2011,19);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('f','Jat Regiment',11238,1994,18);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('g','Jat Regiment',10305,2014,24);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('h','Rajput Regiment',12356,1982,15);
insert into BATALLIAN (batallion_name,regiment,captain_id ,year,total_capacity)
values ('i','Rajput Regiment',49158,2011,18);



insert into CATAGORY (name,class) 
values ('Glock-18','Pistol'),
insert into CATAGORY (name,class) 
values ('Dual Berettas','Pistol'),
insert into CATAGORY (name,class) 
values ('P250','Pistol'),
insert into CATAGORY (name,class) 
values ('Tec-9','Pistol'),
insert into CATAGORY (name,class) 
values ('CZ75-Auto','Pistol'),
insert into CATAGORY (name,class) 
values ('Desert Eagle','Pistol'),
insert into CATAGORY (name,class) 
values ('R8 Revolver','Pistol'),
insert into CATAGORY (name,class) 
values ('P2000','Pistol'),
insert into CATAGORY (name,class) 
values ('Five-Seven','Pistol'),
insert into CATAGORY (name,class) 
values ('Nova','Heavy'),
insert into CATAGORY (name,class) 
values ('XM1014','Heavy'),
insert into CATAGORY (name,class) 
values ('Sawed-Off','Heavy'),
insert into CATAGORY (name,class) 
values ('M249','Heavy'),
insert into CATAGORY (name,class) 
values ('Negev','Heavy'),
insert into CATAGORY (name,class) 
values ('MAG-7','Heavy'),
insert into CATAGORY (name,class) 
values ('MAC-10','submachine gun'),
insert into CATAGORY (name,class) 
values ('MP7','submachine gun'),
insert into CATAGORY (name,class) 
values ('UMP-45','submachine gun'),
insert into CATAGORY (name,class) 
values ('P90','submachine gun'),
insert into CATAGORY (name,class) 
values ('PP-Bizon','submachine gun'),
insert into CATAGORY (name,class) 
values ('MP9','submachine gun'),
insert into CATAGORY (name,class) 
values ('Galil AR','rifles'),
insert into CATAGORY (name,class) 
values ('AK-47','rifles'),
insert into CATAGORY (name,class) 
values ('SSG 08','rifles'),
insert into CATAGORY (name,class) 
values ('SG 553','rifles'),
insert into CATAGORY (name,class) 
values ('AWP','rifles'),
insert into CATAGORY (name,class) 
values ('G3SG1','rifles'),
insert into CATAGORY (name,class) 
values ('FAMAS','rifles'),
insert into CATAGORY (name,class) 
values ('M4A4','rifles'),
insert into CATAGORY (name,class) 
values ('M4A1-S','rifles'),
insert into CATAGORY (name,class) 
values ('AUG','rifles'),
insert into CATAGORY (name,class) 
values ('SCAR-20 ','rifles');


insert into INVENTORY
values ('1078', '12051'),
insert into INVENTORY
values ('1079', '12300'),
insert into INVENTORY
values ('1080', '10923'),
insert into INVENTORY
values ('1081', '11053'),
insert into INVENTORY
values ('1082', '13423'),
insert into INVENTORY
values ('1083', '12105'),
insert into INVENTORY
values ('1084', '14345'),
insert into INVENTORY
values ('1065', '11145'),
insert into INVENTORY
values ('1066', '12115'),
insert into INVENTORY
values ('1067', '12045'),
insert into INVENTORY
values ('1068', '10345'),
insert into INVENTORY
values ('1069', '10045'),
insert into INVENTORY
values ('1062', '12005'),
insert into INVENTORY
values ('1065', '11305'),
insert into INVENTORY
values ('1064', '11045'),
insert into INVENTORY
values ('1069', '21045');

INSERT INTO MEDAL VALUES('Ashok Chakra Award ');
INSERT INTO MEDAL VALUES('Kirti Chakra ');
INSERT INTO MEDAL VALUES('Shaurya Chakra ');
INSERT INTO MEDAL VALUES('Sarvottam Yudh Seva Medal');
INSERT INTO MEDAL VALUES('Yudh Seva Medal');
INSERT INTO MEDAL VALUES('Ati Vishisht Seva Medal ');
INSERT INTO MEDAL VALUES('Vishisht Seva Medal');
INSERT INTO MEDAL VALUES('Bharat Award ');
INSERT INTO MEDAL VALUES('Sarvottam Jeevan Raksha Padak'); INSERT INTO MEDAL VALUES('Uttam Jeevan Raksha Padak'); 
INSERT INTO MEDAL VALUES('Jeevan Raksha Padak');


insert into VISITED (soldier_id,pincode ,visit_date,reason)values
(19339,'382422','2011-01-10','For a confidential meeting'),
(33998, '382426','2015-10-05','For meeting with a Chinese officer'),
(13423, '382425','2013-05-26','For meeting on movement of pakistan'),
(49159, '382429','2006-12-28','For a meeting of visit of Dalai Lama'),
(29603, '382436','2008-07-12','For reviewing a deal of weapons with Russia'),
(10923, '382429','2005-03-21','For awarding a medal'),
(12300, '382427','2003-11-04','For discussing border-security issues in Capital'),
(11305, '382430','2010-01-05','For a techincal meeting on radar technology with Taiwan'),
(10045, '382431','2013-01-19','For a surgical strike on Pakistan.'),
(12005, '382425','2016-09-30','For a meeting with the naval-chief'),
 (11046, '382436','2017-01-31','For a meeting at Indo-Pak Border'),
(13045, '382437','2011-01-17','For a meeting with Air-chief'),
(21045, '382428','2001-10-12','For a confidential meeting'),(14345, '382422','2016-12-12','For reviewing a deal of weapons with America'),
(12300, '382421','2009-05-19','For a meeting in New-Delhi'),
(14345, '382427','2008-08-05','For a meeting with Chinese officials'),
 (12245, '382433','2001-11-24','For a meeting on purchasing new weapons');




select * from LOCATION;
select * from BATALLIAN;
select * from SOLDIER;
select * from VISITED;
select * from MEDAL;
select * from REWARD;
select * from MANUFACTURING;
select * from COMPANY;
select * from INVENTORY;
select * from WEAPONS;
select * from CATAGORY;
select * from WORK;
select * from ASSIGN;
select * from WAR;
select * from REGISTER;
select * from General;
select * from Weapons;








drop database military_management;
