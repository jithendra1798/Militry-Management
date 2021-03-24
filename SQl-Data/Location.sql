
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


INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(12398,01,'2003-03-17','382429');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(13424,01,'1995-10-01','382425');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(28613,01,'1997-07-25','382427');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(13011,01,'2000-05-13','382423');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(12300,01,'2003-09-29','382423');
INSERT INTO soldier_status (sold_id,alive,wardate,pincode) VALUES(14256,0,'2002-04-10','382426');


INSERT INTO SOLDIER VALUES
  (19339,'Arjun Pratap','Soldier','2012-4-15','1987-5-23','2059-8-20','Sikh Regiment',382436,1,176,70,40); 
INSERT INTO SOLDIER VALUES
  (33998,'Karan Jagtap','Soldier','2008-5-16','1982-5-23','2049-4-21','Sikh Regiment',382427,1,179,76,39);
  INSERT INTO SOLDIER VALUES
  (13423,'Jaspreet Singh Kaur','Soldier','2010-9-24','1985-9-9','2054-4-17','Sikh Regiment',382426,1,182,75,40);
  INSERT INTO SOLDIER VALUES
  (49159,'Vijay Kumar Ahirwar','Major General','2011-3-15','1983-4-27','2020-3-21','Sikh Regiment',382427,1,176,70,40);
  INSERT INTO SOLDIER VALUES (29603,'Rohan Dhoot','Soldier','2005-6-21','1987-8-24','2012-5-17','Sikh Soldier',382429,1,182,76,37);
  
 insert into WAR VALUES(1,382429,'2003-03-17');
Insert into WAR VALUES(0,382425,'1995-10-01');
Insert into WAR VALUES(1,382427,'1997-07-25');
Insert into WAR VALUES(1,382423,'2000-05-13');
Insert into WAR VALUES(0,382423,'2003-09-29');
Insert into WAR VALUES(0,382426,'2002-04-10');


INSERT INTO WEAPONS (weapon_id,name) VALUES (1053, 'Glock-18');
INSERT INTO WEAPONS (weapon_id,name) VALUES (1054, 'Dual Berettas');
INSERT INTO WEAPONS (weapon_id,name) VALUES (1055, 'P250');
INSERT INTO WEAPONS (weapon_id,name) VALUES (1056, 'Tec-9');
INSERT INTO WEAPONS (weapon_id,name) VALUES (1057, 'CZ75-Auto');
INSERT INTO WEAPONS (weapon_id,name) VALUES (1058, 'Desert Eagle');


insert into batallian (batallion_name,regiment,captain_id ,year,total_capacity)
values
('a','Madras Regiment', 13011, 1992,20),
('b','Madras Regiment',27989,2013,25),
('c','Rajputana Rifles' ,14255,1996,18),
('d','Rajputana Rifles' ,14256,2010,22),
('e''Sikh Regiment',12402,1980,15),
('e','Sikh Regiment',11046,2011,19),
('f','Jat Regiment',11238,1994,18),
('g','Jat Regiment',10305,2014,24),
('h','Rajput Regiment',12356,1982,15),
('i','Rajput Regiment',49158,2011,18);



insert into catagory (name,class) 
values
('Glock-18','Pistol'),
('Dual Berettas','Pistol'),
('P250','Pistol'),
('Tec-9','Pistol'),
('CZ75-Auto','Pistol'),
('Desert Eagle','Pistol'),
('R8 Revolver','Pistol'),
('P2000','Pistol'),
('Five-Seven','Pistol'),
('Nova','Heavy'),
('XM1014','Heavy'),
('Sawed-Off','Heavy'),
('M249','Heavy'),
('Negev','Heavy'),
('MAG-7','Heavy'),

('MAC-10','submachine gun'),
('MP7','submachine gun'),
('UMP-45','submachine gun'),
('P90','submachine gun'),
('PP-Bizon','submachine gun'),
('MP9','submachine gun'),

('Galil AR','rifles'),
('AK-47','rifles'),
('SSG 08','rifles'),
('SG 553','rifles'),
('AWP','rifles'),
('G3SG1','rifles'),
('FAMAS','rifles'),
('M4A4','rifles'),
('M4A1-S','rifles'),
('AUG','rifles'),
('SCAR-20 ','rifles');


insert into inventory
values
('1078', '12051'),
('1079', '12300'),
('1080', '10923'),
 ('1081', '11053'),
('1082', '13423'),
('1083', '12105'),
('1084', '14345'),
('1065', '11145'),
('1066', '12115'),
('1067', '12045'),
('1068', '10345'),
('1069', '10045'),
('1062', '12005'),
('1065', '11305'),
 ('1064', '11045'),
('1069', '21045');

INSERT INTO medal VALUES('Ashok Chakra Award ');
INSERT INTO medal VALUES('Kirti Chakra ');
INSERT INTO medal VALUES('Shaurya Chakra ');
INSERT INTO medal VALUES('Sarvottam Yudh Seva Medal');
INSERT INTO medal VALUES('Yudh Seva Medal');
INSERT INTO medal VALUES('Ati Vishisht Seva Medal ');
INSERT INTO medal VALUES('Vishisht Seva Medal');
INSERT INTO medal VALUES('Bharat Award ');
INSERT INTO medal VALUES('Sarvottam Jeevan Raksha Padak'); INSERT INTO medal VALUES('Uttam Jeevan Raksha Padak'); 
INSERT INTO medal VALUES('Jeevan Raksha Padak');


insert into visited (soldier_id,pincode ,visit_date,reason)values
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

