----------------------
--      |
-- //\\(Oo_oO))//\\
--        ``
-- Author: jsharp
----------------------
-- README
-- Create rows in zookeeper.reptile table

INSERT INTO zookeeper.reptile(
	rep_id, species, name, dob)
	VALUES (1, 'Ball Python', 'Paarthurnax', '10/06/2016');
	
INSERT INTO zookeeper.reptile(
	rep_id, species, name, dob)
	VALUES (2, 'Common Boa Constrictor', 'Mrs. Bojangles', '01/01/2011');
	
INSERT INTO zookeeper.reptile(
	rep_id, species, name, dob)
	VALUES (3, 'Red Tail Boa', 'Mr. Slithers', '01/01/2014');

-- Create rows in zookeeper.bird table

INSERT INTO zookeeper.bird(
	bird_id, species, name, dob)
	VALUES (1, 'Budgie', 'Steve', '01/01/2015');

-- create rows in zookeeper.arachnid table

INSERT INTO zookeeper.arachnid(
	spooder_id, species, name, dob)
	VALUES (1, 'Brachypelma albopilosum', 'Linda', '01/01/2015');

INSERT INTO zookeeper.arachnid(
	spooder_id, species, name, dob)
	VALUES (2, 'Brachypelma hamorii', 'Red', '01/01/2017');

INSERT INTO zookeeper.arachnid(
	spooder_id, species, name, dob)
	VALUES (3, 'Grammastola pulchripes', 'Coco', '01/01/2019');