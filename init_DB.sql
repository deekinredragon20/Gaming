Create Table Player.character(
	playerID		NUMBER(9) PRIMARY KEY,
	name			VARCHAR2(20) NOT NULL,
	age				NUMBER(3) DEFAULT(1),
	classLevel		VARCHAR2(50) NOT NULL,
	size			char(1) DEFAULT('M'),
	race			VARCHAR2(20) NOT NULL,
	height			NUMBER(5) NOT NULL,
	eye				VARCHAR2(10) NOT NULL,
	skin			VARCHAR2(10) NOT NULL, 
	CONSTRAINT player_playerID_pk PRIMARY KEY(playerID));

CREATE TABLE Player.stats(
	statsID			NUMBER(9) PRIMARY KEY,
	playerID        NUMBER(9) FOREIGN KEY,
	strength 		NUMBER(2) DEFAULT(8),
	dexterity		NUMBER(2) DEFAULT(8),
	consitution		NUMBER(2) DEFAULT(8),
	intelligence	NUMBER(2) DEFAULT(8),
	wisdom			NUMBER(2) DEFAULT(8),
	charisma		NUMBER(2) DEFAULT(8),
	strengthMod		NUMBER(2) DEFAULT(-1),
 	dexterityMod	NUMBER(2) DEFAULT(-1),
 	constitutionMod	NUMBER(2) DEFAULT(-1),
 	intelligenceMod	NUMBER(2) DEFAULT(-1),
 	wisdomMod		NUMBER(2) DEFAULT(-1),
 	charismaMod		NUMBER(2) DEFAULT(-1),
 	CONSTRAINT player_stats_statsID_pk PRIMARY KEY,
 	CONSTRAINT player_stats_playerID_fk FOREIGN KEY REFERENCES Player.character(playerID));
