--card_Holder Table Creation
CREATE TABLE IF NOT EXISTS card_holder(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

INSERT INTO card_holder(id,name) VALUES (1,'Robert Johnson');
INSERT INTO card_holder(id,name) VALUES (2,'Shane Shaffer');
INSERT INTO card_holder(id,name) VALUES (3,'Elizabeth Sawyer');
INSERT INTO card_holder(id,name) VALUES (4,'Danielle Green');
INSERT INTO card_holder(id,name) VALUES (5,'Sara Cooper');
INSERT INTO card_holder(id,name) VALUES (6,'Beth Hernandez');
INSERT INTO card_holder(id,name) VALUES (7,'Sean Taylor');
INSERT INTO card_holder(id,name) VALUES (8,'Michael Floyd');
INSERT INTO card_holder(id,name) VALUES (9,'Laurie Gibbs');
INSERT INTO card_holder(id,name) VALUES (10,'Matthew Gutierrez');
INSERT INTO card_holder(id,name) VALUES (11,'Brandon Pineda');
INSERT INTO card_holder(id,name) VALUES (12,'Megan Price');
INSERT INTO card_holder(id,name) VALUES (13,'John Martin');
INSERT INTO card_holder(id,name) VALUES (14,'Gary Jacobs');
INSERT INTO card_holder(id,name) VALUES (15,'Kyle Tucker');
INSERT INTO card_holder(id,name) VALUES (16,'Crystal Clark');
INSERT INTO card_holder(id,name) VALUES (17,'Michael Carroll');
INSERT INTO card_holder(id,name) VALUES (18,'Malik Carlson');
INSERT INTO card_holder(id,name) VALUES (19,'Peter Mckay');
INSERT INTO card_holder(id,name) VALUES (20,'Kevin Spencer');
INSERT INTO card_holder(id,name) VALUES (21,'Dana Washington');
INSERT INTO card_holder(id,name) VALUES (22,'Austin Johnson');
INSERT INTO card_holder(id,name) VALUES (23,'Mark Lewis');
INSERT INTO card_holder(id,name) VALUES (24,'Stephanie Dalton');
INSERT INTO card_holder(id,name) VALUES (25,'Nancy Contreras');

SELECT * FROM card_holder;

--credit_card Table Creation
--Relationship n-1 with card_holder
CREATE TABLE IF NOT EXISTS credit_card(
	card BIGINT PRIMARY KEY,
	cardholder_id INTEGER NOT NULL,
	FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

ALTER TABLE credit_card ALTER COLUMN credit_card_number TYPE BIGINT;

INSERT INTO credit_card(card,cardholder_id) VALUES (3517111172421930,1);
INSERT INTO credit_card(card,cardholder_id) VALUES (4761049645711555811,1);
INSERT INTO credit_card(card,cardholder_id) VALUES (4866761290278198714,2);
INSERT INTO credit_card(card,cardholder_id) VALUES (675911140852,2);
INSERT INTO credit_card(card,cardholder_id) VALUES (30078299053512,3);
INSERT INTO credit_card(card,cardholder_id) VALUES (4263694062533017,4);
INSERT INTO credit_card(card,cardholder_id) VALUES (584226564303,4);
INSERT INTO credit_card(card,cardholder_id) VALUES (4276466390111,5);
INSERT INTO credit_card(card,cardholder_id) VALUES (4268491956169254,5);
INSERT INTO credit_card(card,cardholder_id) VALUES (3581345943543942,6);
INSERT INTO credit_card(card,cardholder_id) VALUES (4159836738768855913,6);
INSERT INTO credit_card(card,cardholder_id) VALUES (3516952396080247,7);
INSERT INTO credit_card(card,cardholder_id) VALUES (4539990688484983,7);
INSERT INTO credit_card(card,cardholder_id) VALUES (4834483169177062,8);
INSERT INTO credit_card(card,cardholder_id) VALUES (30063281385429,8);
INSERT INTO credit_card(card,cardholder_id) VALUES (30181963913340,9);
INSERT INTO credit_card(card,cardholder_id) VALUES (4962915017023706562,10);
INSERT INTO credit_card(card,cardholder_id) VALUES (4165305432349489280,10);
INSERT INTO credit_card(card,cardholder_id) VALUES (213193946980303,10);
INSERT INTO credit_card(card,cardholder_id) VALUES (180098539019105,11);
INSERT INTO credit_card(card,cardholder_id) VALUES (4644008655884311378,11);
INSERT INTO credit_card(card,cardholder_id) VALUES (4027907156459098,11);
INSERT INTO credit_card(card,cardholder_id) VALUES (501879657465,12);
INSERT INTO credit_card(card,cardholder_id) VALUES (5297187379298983,12);
INSERT INTO credit_card(card,cardholder_id) VALUES (376027549341849,12);
INSERT INTO credit_card(card,cardholder_id) VALUES (4711773125020499,13);
INSERT INTO credit_card(card,cardholder_id) VALUES (5135837688671496,13);
INSERT INTO credit_card(card,cardholder_id) VALUES (3561954487988605,13);
INSERT INTO credit_card(card,cardholder_id) VALUES (5175947111814778,14);
INSERT INTO credit_card(card,cardholder_id) VALUES (4723783028106084756,15);
INSERT INTO credit_card(card,cardholder_id) VALUES (6500236164848279,15);
INSERT INTO credit_card(card,cardholder_id) VALUES (503842928916,16);
INSERT INTO credit_card(card,cardholder_id) VALUES (5570600642865857,16);
INSERT INTO credit_card(card,cardholder_id) VALUES (5500708021555307,16);
INSERT INTO credit_card(card,cardholder_id) VALUES (6011987562414062,17);
INSERT INTO credit_card(card,cardholder_id) VALUES (4498002758300,18);
INSERT INTO credit_card(card,cardholder_id) VALUES (344119623920892,18);
INSERT INTO credit_card(card,cardholder_id) VALUES (4743204091443101526,19);
INSERT INTO credit_card(card,cardholder_id) VALUES (5361779664174555,19);
INSERT INTO credit_card(card,cardholder_id) VALUES (3561072557118696,19);
INSERT INTO credit_card(card,cardholder_id) VALUES (3535651398328201,20);
INSERT INTO credit_card(card,cardholder_id) VALUES (4506405265172173,20);
INSERT INTO credit_card(card,cardholder_id) VALUES (4586962917519654607,20);
INSERT INTO credit_card(card,cardholder_id) VALUES (4279104135293225293,21);
INSERT INTO credit_card(card,cardholder_id) VALUES (501809222273,22);
INSERT INTO credit_card(card,cardholder_id) VALUES (4741042733274,23);
INSERT INTO credit_card(card,cardholder_id) VALUES (4188164051171486,23);
INSERT INTO credit_card(card,cardholder_id) VALUES (4150721559116778,23);
INSERT INTO credit_card(card,cardholder_id) VALUES (4681896441519,24);
INSERT INTO credit_card(card,cardholder_id) VALUES (30142966699187,24);
INSERT INTO credit_card(card,cardholder_id) VALUES (3582198969197591,24);
INSERT INTO credit_card(card,cardholder_id) VALUES (4319653513507,25);
INSERT INTO credit_card(card,cardholder_id) VALUES (372414832802279,25);

SELECT * FROM credit_card;
--merchant_category Table Creation
CREATE TABLE IF NOT EXISTS merchant_category(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

INSERT INTO merchant_category(id,name) VALUES (1,'restaurant');
INSERT INTO merchant_category(id,name) VALUES (2,'coffee shop');
INSERT INTO merchant_category(id,name) VALUES (3,'bar');
INSERT INTO merchant_category(id,name) VALUES (4,'pub');
INSERT INTO merchant_category(id,name) VALUES (5,'food truck');

SELECT * FROM merchant_category;


--merchant Table Creation
--Relationship n-1 with merchant_category
CREATE TABLE IF NOT EXISTS merchant(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	id_merchant_category INTEGER NOT NULL,
	FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);

INSERT INTO merchant(id, name, id_merchant_category) VALUES (1,'Murphy, Heath and Fields',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (2,'Riggs-Adams',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (3,'Sanders, Parks and Mcfarland',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (4,'Mccarty-Thomas',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (5,'Miller-Blevins',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (6,'Wilson and Sons',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (7,'Gomez-Kelly',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (8,'Russell-Thomas',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (9,'Curry, Scott and Richardson',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (10,'Herrera Group',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (11,'Stanton Group',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (12,'Bell, Gonzalez and Lowe',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (13,'Giles and Sons',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (14,'Osborne-Page',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (15,'Long, Harrell and Johnson',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (16,'Bryant, Thomas and Collins',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (17,'Bauer-Cole',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (18,'Romero-Jordan',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (19,'Santos-Fitzgerald',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (20,'Kim-Lopez',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (21,'Robertson-Smith',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (22,'Dalton, Cameron and Jones',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (23,'Wilson, Roberts and Davenport',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (24,'Rodgers, Johnston and Macias',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (25,'Vaughn, Wilson and Hall',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (26,'Smith-Stephens',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (27,'Horn Ltd',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (28,'Hess-Fischer',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (29,'Browning-Cantu',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (30,'Atkinson Ltd',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (31,'Fisher, Salazar and Thomas',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (32,'Norton, Burton and Smith',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (33,'Vasquez-Parker',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (34,'Combs-Jones',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (35,'Jarvis-Turner',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (36,'Hamilton-Mcfarland',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (37,'Nguyen, Bautista and Williams',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (38,'Brown LLC',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (39,'Young-Navarro',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (40,'Cox, Montgomery and Morgan',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (41,'Ford, Williams and Dunn',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (42,'Kennedy-Chen',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (43,'Wallace and Sons',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (44,'Little-Floyd',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (45,'Velazquez Ltd',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (46,'Miller, Chavez and Cobb',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (47,'Martin Inc',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (48,'Baker Inc',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (49,'Davis, Lowe and Baxter',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (50,'Johnson-Watts',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (51,'Fisher-Bolton',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (52,'Jensen-Stanley',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (53,'Wallace PLC',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (54,'Berry-Lopez',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (55,'Johnson, Rivas and Anderson',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (56,'Smith PLC',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (57,'Thornton-Williams',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (58,'Young, Hull and Williams',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (59,'Williams Group',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (60,'Smith-Richards',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (61,'Richardson, Smith and Jordan',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (62,'Cooper, Carpenter and Jackson',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (63,'Reed Group',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (64,'Cline, Myers and Strong',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (65,'Allen, Ramos and Carroll',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (66,'Robles Inc',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (67,'Maxwell, Tapia and Villanueva',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (68,'Ramirez-Carr',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (69,'Dominguez PLC',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (70,'White-Hall',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (71,'Greene LLC',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (72,'Lopez-Kelly',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (73,'Colon Ltd',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (74,'Skinner-Williams',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (75,'Martinez Group',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (76,'Lowe PLC',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (77,'Brown, Ballard and Glass',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (78,'Ruiz-Anderson',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (79,'Lee LLC',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (80,'Kelly, Dyer and Schmitt',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (81,'Fowler and Sons',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (82,'Day-Murray',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (83,'Solis Group',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (84,'Marshall-Rojas',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (85,'Patton-Rivera',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (86,'Walker, Campbell and Sullivan',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (87,'Griffin-Woodard',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (88,'Armstrong PLC',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (89,'Kelley-Roberts',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (90,'Brown-Cunningham',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (91,'Turner Ltd',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (92,'Garcia-White',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (93,'Rodriguez-Parker',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (94,'Yoder-Zavala',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (95,'Baxter-Smith',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (96,'Johnson-Fuller',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (97,'Ruiz-Chavez',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (98,'Rivera PLC',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (99,'Bond, Lewis and Rangel',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (100,'Townsend-Anderson',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (101,'Whitehead-Sexton',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (102,'Walters-Ward',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (103,'Jones, Clark and Hoover',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (104,'Mcdaniel, Hines and Mcfarland',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (105,'Garcia and Sons',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (106,'Carter-Blackwell',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (107,'Rowe-Abbott',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (108,'Best Inc',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (109,'Collins LLC',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (110,'Rodriguez, Dunlap and Nunez',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (111,'Padilla-Clements',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (112,'Greer Inc',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (113,'Edwards-Aguirre',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (114,'Greene-Wood',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (115,'Williams Inc',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (116,'Ferguson Ltd',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (117,'Mitchell Group',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (118,'Maldonado Group',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (119,'Henderson and Sons',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (120,'Vega, Jones and Castro',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (121,'Fleming, Smith and Collins',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (122,'Perry and Sons',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (123,'Boone, Davis and Townsend',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (124,'Mccarty PLC',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (125,'Russell and Sons',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (126,'Bartlett and Sons',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (127,'Williams, Wright and Wagner',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (128,'Pitts, Salinas and Garcia',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (129,'Sweeney-Paul',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (130,'Brown, Estrada and Powers',2);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (131,'Harrison, Newton and Hansen',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (132,'Pugh-Williams',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (133,'Scott, Hess and Finley',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (134,'Jenkins, Peterson and Beck',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (135,'Jacobs, Torres and Walker',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (136,'Martinez-Robinson',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (137,'Garcia PLC',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (138,'Mccullough-Murphy',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (139,'Kidd-Lopez',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (140,'Wheeler-Moreno',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (141,'Wood-Ramirez',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (142,'Thomas-Garcia',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (143,'Guzman, Garcia and Church',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (144,'Walker, Deleon and Wolf',1);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (145,'Hood-Phillips',3);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (146,'Pitts, Smith and Gonzalez',4);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (147,'Marshall-Lopez',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (148,'Huerta, Keith and Walters',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (149,'Clark and Sons',5);
INSERT INTO merchant(id, name, id_merchant_category) VALUES (150,'Johnson and Sons',2);

SELECT * FROM merchant;

--transaction Table Creation
--Relationship n-1 with merchant_category
--Relationship n-1 with credit_card
CREATE TABLE IF NOT EXISTS transaction(
	id INTEGER,
	date TIMESTAMP,
	PRIMARY KEY (id, date),
	amount NUMERIC NOT NULL,
	card BIGINT NOT NULL,
	id_merchant INTEGER NOT NULL,
	FOREIGN KEY (id_merchant) REFERENCES merchant(id),
	FOREIGN KEY (card) REFERENCES credit_card(card)
);

ALTER TABLE transaction ALTER COLUMN credit_card_number TYPE BIGINT;

INSERT INTO transaction(id,date,amount,card,merchant_id) VALUES (222,'2018-01-01 21:35:10',6.22,3561954487988605,69);
INSERT INTO transaction(id,date,amount,card,merchant_id) VALUES (2045,'2018-01-01 21:43:12',3.83,5135837688671496,85);




