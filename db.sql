DROP TABLE APARELHO;
DROP SEQUENCE APARELHO_SEQUENCE;

DROP TABLE FABRICANTE;
DROP SEQUENCE FABRICANTE_SEQUENCE;

CREATE SEQUENCE FABRICANTE_SEQUENCE;
CREATE TABLE FABRICANTE (
	ID INTEGER PRIMARY KEY,
	NOME VARCHAR(255),
	ORIGEM VARCHAR(255),
	FUNDADOR VARCHAR(255),
	CEO VARCHAR(255),
	ANO_FUNDACAO INTEGER,
	FUNCIONARIOS INTEGER,
	VALOR NUMERIC(17,2),
	AVALIACAO NUMERIC(4,2),
	IMPORTADO BOOLEAN
);

CREATE SEQUENCE APARELHO_SEQUENCE;
CREATE TABLE APARELHO (
	ID INTEGER PRIMARY KEY,
	MODELO VARCHAR(255),
	NOME VARCHAR(255),
	CODIGO VARCHAR(255),
	LINHA VARCHAR(255),
	ANO_LANCAMENTO INTEGER,
	ARMAZENAMENTO INTEGER,
	PRECO NUMERIC(7,2),
	AVALIACAO NUMERIC(4,2),
	FABRICANTE INTEGER,
	CONSTRAINT APARELHO_FABRICANTE_FK FOREIGN KEY (FABRICANTE) REFERENCES FABRICANTE(ID)
);

insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (1, 'Cooper-Standard Holdings Inc.', 'MK', 'Elvira Oda', 'Christalle Wiburn', 1994, 912263, 163629.47, 4.05, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (2, 'First Capital, Inc.', 'GL', 'Chandra Pitford', 'Hubie Bomfield', 2004, 923058, 344071.79, 2.03, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (3, 'HP Inc.', 'HN', 'Malissia Quakley', 'Eula Peever', 2012, 548319, 820077.57, 0.5, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (4, 'Eaton Vance NextShares Trust', 'CA', 'Danni Revans', 'Vail Tooke', 2008, 93879, 465413.0, 9.11, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (5, 'Graham Holdings Company', 'VN', 'Benedict Albarez', 'Inness Bon', 2008, 190795, 29744.99, 0.45, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (6, 'First Capital, Inc.', 'BA', 'Matilde Dmitrievski', 'Jacinda Downse', 2008, 821855, 362069.83, 9.98, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (7, 'Conyers Park Acquisition Corp.', 'BR', 'Alain Coleridge', 'Nestor Whal', 2006, 543065, 868859.22, 4.94, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (8, 'Genius Brands International, Inc.', 'NZ', 'Eveline Rawsen', 'Nadya Thirst', 2000, 221469, 407360.45, 8.78, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (9, 'Cigna Corporation', 'MM', 'Linnie Hillburn', 'Townsend Titford', 1998, 837601, null, 5.83, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (10, 'Owens-Illinois, Inc.', 'RU', 'Hugh Ketley', 'Darbie Thormann', 2009, 802200, null, 1.8, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (11, 'Gibraltar Industries, Inc.', 'CN', 'Katleen Mc Andrew', 'Chip Lattin', 2010, 255144, 440037.32, 4.91, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (12, 'VictoryShares International Volatility Wtd ETF', 'FR', 'Jude Glasspool', 'Thorndike Lesslie', 1992, 488458, 79470.27, 6.36, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (13, 'Synthesis Energy Systems, Inc.', 'GR', 'Murdock Hurleston', 'Delora Ranner', 1995, 277036, 209929.06, 1.13, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (14, 'Nam Tai Property Inc.', 'US', 'Joletta Pidgin', 'Ralph Linham', 2008, 449302, 602278.73, 0.38, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (15, 'Haynes International, Inc.', 'ID', 'Johnny Geater', 'Kare Peat', 2007, 45498, 696072.07, 9.43, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (16, 'Real Industry, Inc. ', 'PL', 'Matilda Ferrarese', 'Andrej Mounch', 1993, 878398, null, 8.43, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (17, 'MYR Group, Inc.', 'US', 'Corney Nafziger', 'Catriona Millership', 2010, 776122, 810820.36, 2.19, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (18, 'Deutsche Bank AG', 'CO', 'Dione Keaveney', 'Kendre Simnell', 1988, 961235, 181658.53, 6.52, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (19, 'PS Business Parks, Inc.', 'AM', 'Bernardina Craxford', 'Lida McCuish', 1995, 280611, 785066.98, 1.98, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (20, 'ChannelAdvisor Corporation', 'ID', 'Opaline Cawsby', 'Milo Lesser', 1998, 191785, 504191.1, 6.58, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (21, 'Blackrock Global', 'EG', 'Buffy Doran', 'Kayle Tailour', 2009, 696170, 689377.93, 6.19, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (22, 'Companhia Brasileira de Distribuicao', 'CN', 'Rudy Itzig', 'Eldon Purse', 2006, 884328, 724874.0, 4.26, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (23, 'Blackrock MuniYield Quality Fund, Inc.', 'RU', 'Odele Kemmons', 'Emelyne Raylton', 2010, 10544, 257226.84, 3.76, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (24, 'General Finance Corporation', 'SE', 'Ellwood Edmeades', 'Sally Pumfrett', 1992, 349427, 465316.39, 8.17, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (25, 'Palo Alto Networks, Inc.', 'CN', 'Muffin Mizzi', 'Ransell Worrill', 2005, 904373, 798824.0, 0.76, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (26, 'DineEquity, Inc', 'PL', 'Callida Darree', 'Ansell Witson', 1991, 716139, 316155.48, 6.03, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (27, 'PGT Innovations, Inc.', 'PT', 'Aridatha Gebb', 'Bertha Hearse', 1996, 256875, 356584.64, 2.36, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (28, 'Pepsico, Inc.', 'CN', 'Mimi Lornsen', 'Uriah Lighten', 1992, 612046, 9586.15, 7.49, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (29, 'Bank Of New York Mellon Corporation (The)', 'BR', 'Penny Pulsford', 'Cecilius Robjents', 2008, 843582, 97184.21, 4.36, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (30, 'Kayne Anderson Midstream Energy Fund, Inc', 'ID', 'Raven Oultram', 'Rayshell Gadsden', 1989, 190411, null, 5.42, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (31, 'CNA Financial Corporation', 'PT', 'Fleur Fone', 'Arlee Burnell', 2009, 923391, 564462.69, 3.83, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (32, 'DragonWave Inc', 'ID', 'Jasmine Cassius', 'Angelico Starkey', 2011, 642784, 27436.39, 5.7, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (33, 'THL Credit, Inc.', 'RS', 'Lane McAlindon', 'Roderick Godfrey', 2010, 718045, 553874.42, 2.96, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (34, 'Carter''s, Inc.', 'IQ', 'Glen Haucke', 'Karina Sterke', 1992, 3894, 389998.87, 9.95, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (35, 'Antero Resources Corporation', 'ID', 'Torey Clapshaw', 'Noelle Castagne', 1991, 677640, 937842.11, 6.13, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (36, 'Function(x) Inc.', 'ID', 'Yanaton Ravenhill', 'Kerrin Caress', 1986, 634183, 293388.29, 6.48, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (37, 'Sears Holdings Corporation', 'CN', 'Vassily Pate', 'Minnaminnie Nutten', 1984, 678979, 816560.27, 5.28, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (38, 'Nuveen New York Municipal Value Fund 2', 'ID', 'Linda Scanterbury', 'Menard Coultish', 1994, 925078, 522871.35, 7.59, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (39, 'Mesabi Trust', 'DO', 'Charo Rimes', 'Clare Portugal', 2012, 941549, 588676.0, 7.08, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (40, 'Erie Indemnity Company', 'CN', 'Torrence Burgne', 'Lisha Kaubisch', 1986, 768068, 828323.35, 3.3, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (41, 'iShares MSCI EM ESG Optimized ETF', 'NP', 'Lowell Durgan', 'Leslie Cuncarr', 1986, 842312, 358741.3, 8.58, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (42, 'Commerce Bancshares, Inc.', 'CN', 'Ario Lingley', 'Meghann Albert', 1965, 913489, 343915.19, 6.09, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (43, 'Christopher & Banks Corporation', 'CN', 'Reynold Beville', 'Giana Youles', 1995, 614253, 187655.54, 0.68, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (44, 'Omega Healthcare Investors, Inc.', 'PL', 'Jareb Dabs', 'Adah Jachimak', 2007, 307899, 408158.44, 9.6, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (45, 'Black Hills Corporation', 'RU', 'Cozmo Elijahu', 'Carver Flarity', 1994, 590534, 273361.15, 1.04, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (46, 'KLX Inc.', 'US', 'Aldous Hiom', 'Addi Pinkerton', 1994, 762370, 701023.97, 9.51, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (47, 'Exponent, Inc.', 'CN', 'Patty Jakab', 'Minnnie MacCague', 1997, 822694, 476558.06, 4.53, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (48, 'DigitalGlobe, Inc', 'PT', 'Benny Nesterov', 'Culver Arundel', 1998, 561190, 200481.19, 6.69, true);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (49, 'Conifer Holdings, Inc.', 'PT', 'Magdalene Weaben', 'Mireielle Mahood', 2003, 76366, 850474.82, 6.55, false);
insert into FABRICANTE (id, nome, origem, fundador, ceo, ano_fundacao, funcionarios, valor, avaliacao, importado) values (50, 'KKR & Co. L.P.', 'ID', 'Leanor Janiszewski', 'Fawne Schust', 2003, 584847, 421240.78, 7.15, true);

insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (1, '#d0ffc4', '90', '87cc127a-58ba-481a-8208-95e4347b40fa', 'Audi', 1991, 243, 1177.48, 3.48, 3);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (2, '#7cc3f3', 'Ram 3500', '7eb263f2-9377-4cd8-ae12-472fcc25c5f6', 'Dodge', 1996, 123, 665.82, 4.63, 41);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (3, '#223446', 'Escalade ESV', 'b4bac908-decc-46d4-a1b8-4b05a1c7baae', 'Cadillac', 2005, 576, 1625.63, 0.77, 38);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (4, '#453401', '911', '2afd9892-d753-437e-b17c-c4d0eb74ab32', 'Porsche', 1994, 877, 603.23, 7.55, 10);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (5, '#3b38aa', 'SL-Class', 'c6b98f9a-9f48-44a3-a3b6-8d0c1b0d46bc', 'Mercedes-Benz', 2002, 585, 219.43, 2.08, 23);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (6, '#006a79', 'Corvette', 'a0446bc0-4a2d-4e2f-97d6-040d692f605f', 'Chevrolet', 1988, 615, 624.76, 4.51, 5);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (7, '#e124ff', 'RX', null, 'Lexus', 2010, 27, 1990.08, 0.35, 1);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (8, '#226bc8', 'RX-7', '347843c5-889e-461f-8b7f-3d9549a0662b', 'Mazda', 1988, 110, 1395.09, 0.04, 5);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (9, '#ec1838', 'Avalon', '4b343928-ab39-4857-b279-15f63441a004', 'Toyota', 1996, 497, null, 4.09, 12);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (10, '#f634fa', 'Quattro', 'b3706459-9f13-4de1-955c-6d67ebc4a51d', 'Audi', 1992, 955, null, 1.39, 38);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (11, '#36004d', 'Fiero', 'd0bfd963-2a66-47a8-b7b8-ddbbdc71f83f', 'Pontiac', 1984, 465, 1708.81, 7.34, 19);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (12, '#81a497', 'GS', '24321cac-8c11-4364-88df-de166c7c482a', 'Lexus', 1993, 282, 1229.22, 2.79, 46);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (13, '#aa1172', 'Diamante', '6323d022-1037-410c-881e-447d8b6ae6a2', 'Mitsubishi', 2004, 483, 611.1, 7.6, 21);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (14, '#5c3196', 'Ranger', '70a4ece3-985e-4a36-8ca7-6e14ddfbce10', 'Ford', 2009, 176, 997.45, 6.35, 24);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (15, '#050351', 'Escort', 'cfa38d7b-42d8-4790-84d0-2b8f500f5cfc', 'Ford', 1992, 187, null, 4.59, 7);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (16, '#ea908a', 'QX', 'c445af40-549a-45cd-b729-644cfc93ee3c', 'Infiniti', 2000, 1016, 966.76, 4.8, 6);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (17, '#d7550e', 'Grand Cherokee', null, 'Jeep', 1994, 694, 1203.3, 4.73, 41);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (18, '#e862cf', 'Eldorado', '24e8bdaa-d0d6-4f2e-95ae-7a2e1f3347a7', 'Cadillac', 1997, 39, 1915.7, 4.1, 27);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (19, '#f646e0', '300', null, 'Chrysler', 2010, 872, 1323.43, 8.63, 33);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (20, '#c01c91', 'Armada', '50a22b6c-e011-4b67-b880-b9112c4b8307', 'Nissan', 2005, 262, 524.49, 1.25, 47);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (21, '#1c42c1', 'Bronco', '7eaf9163-9565-4af4-98e6-40a0fe16cda8', 'Ford', 1987, 975, 863.14, 3.74, 35);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (22, '#525af2', 'Corvette', 'bf44dd9e-0937-4dd6-b526-7fecbf5b5aec', 'Chevrolet', 1961, 225, 789.97, 3.05, 3);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (23, '#c1f9e5', 'Veracruz', null, 'Hyundai', 2008, 434, 1434.2, 5.18, 37);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (24, '#57eeb6', 'Z4', '692764af-5c0e-4891-9520-b1d45feac45f', 'BMW', 2005, 524, 953.81, 6.1, 21);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (25, '#4e7bd9', 'Park Avenue', null, 'Buick', 1991, 15, 1962.0, 2.29, 25);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (26, '#fd5a65', 'Navajo', '50e5ea87-634a-4fc8-9b85-46e29552418a', 'Mazda', 1994, 891, 533.01, 1.04, 7);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (27, '#5229bb', 'SL-Class', '46ddf26e-4780-451d-855c-03b8f848da22', 'Mercedes-Benz', 1998, 439, 326.06, 4.97, 34);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (28, '#d890c8', 'ES', 'bd7055e1-875f-40a4-99d1-36b1f725a411', 'Lexus', 1995, 138, 301.2, 3.94, 20);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (29, '#313483', '550', '436f2c4d-b2ea-4895-8b6a-6e7666db589b', 'BMW', 2006, 762, 1459.01, 6.89, 30);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (30, '#451ce8', 'New Beetle', 'e68950ac-802e-4c87-a2c7-6e24bd7f9f9a', 'Volkswagen', 1999, 831, 1193.86, 6.56, 39);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (31, '#3b870e', '300ZX', null, 'Nissan', 1996, 484, 1584.82, 6.59, 32);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (32, '#1799e4', 'T100', null, 'Toyota', 1994, 693, 1638.87, 6.81, 8);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (33, '#82a9c9', 'S2000', 'f79bbe64-630b-46eb-96ce-d2ab6236b8b2', 'Honda', 2001, 410, 1125.6, 8.59, 15);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (34, '#38d5b4', 'Azure T', '97076bf3-cb6b-4442-b8f1-fe18d31cb244', 'Bentley', 2010, 830, 1871.65, 4.67, 34);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (35, '#fdff82', 'Suburban 2500', 'd1d152cd-0b64-4d25-8f2e-73d10e6c8b47', 'Chevrolet', 2011, 605, 260.25, 1.28, 12);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (36, '#7ed44b', 'S6', 'f35adac2-e862-41e3-8c41-37cbfda4a0d5', 'Audi', 2008, 865, 1125.92, 9.2, 25);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (37, '#1e7526', 'V50', '16911df9-1e61-4cf7-bc59-3057d74cc765', 'Volvo', 2008, 40, 304.49, 7.15, 9);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (38, '#d16d1a', 'Boxster', '50099338-bc81-4b80-a878-36b9f44849dd', 'Porsche', 1998, 560, 1416.0, 3.25, 21);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (39, '#c2dd04', 'Navigator L', null, 'Lincoln', 2009, 398, null, 8.33, 5);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (40, '#702176', 'Marquis', 'da34ce93-385f-4086-9b5d-83c14ed4c96c', 'Mercury', 1984, 673, 1166.09, 6.75, 42);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (41, '#8bc982', 'Scirocco', null, 'Volkswagen', 1988, 774, 1515.31, 9.95, 30);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (42, '#f0d6cf', 'DeVille', null, 'Cadillac', 2001, 1022, 574.77, 7.92, 16);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (43, '#990d08', 'A3', '497cf19d-beeb-48e6-a54d-6bd033b1e650', 'Audi', 2007, 42, 1276.45, 0.27, 41);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (44, '#8da89d', 'Accord', null, 'Honda', 2001, 145, 958.16, 1.4, 46);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (45, '#aca553', 'Festiva', null, 'Ford', 1993, 579, 815.2, 7.31, 5);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (46, '#d567f4', 'Mustang', '4a42d393-0c6d-40f8-8914-efc38e422cf0', 'Ford', 2011, 947, 957.11, 8.65, 32);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (47, '#c42c7a', 'X6', '2eee94b2-44a4-4030-be96-0f8c2d205328', 'BMW', 2011, 688, 1398.16, 8.87, 8);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (48, '#0bb01e', 'V50', '59d596fd-fd50-472a-8622-9fbcf705fcc2', 'Volvo', 2009, 379, 1092.56, 9.48, 4);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (49, '#9846c0', 'X3', '3e8feb75-4c9d-44d3-8d5a-83acc9860c63', 'BMW', 2007, 718, 1587.89, 4.11, 6);
insert into APARELHO (id, modelo, nome, codigo, linha, ano_lancamento, armazenamento, preco, avaliacao, fabricante) values (50, '#5e69bd', 'Grand Am', 'bed0e51c-5c2e-4e1f-bc84-1ff1f5d785d1', 'Pontiac', 1992, 668, 1827.21, 1.49, 35);