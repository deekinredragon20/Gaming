CREATE TABLE Player.character(
	playerID		NUMBER(9) PRIMARY KEY,
	name			VARCHAR2(20),
	age				NUMBER(3) DEFAULT(1),
	classLevel		VARCHAR2(50),
	size			char(1) DEFAULT('M'),
	race			VARCHAR2(20),
	height			NUMBER(5),
	eye				VARCHAR2(10),
	skin			VARCHAR2(10), 
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
 	CONSTRAINT player_stats_statsID_pk PRIMARY KEY (statsID),
 	CONSTRAINT player_stats_playerID_fk FOREIGN KEY(playerID) REFERENCES Player.character(playerID));

CREATE TABLE Player.skills(
	skillID			NUMBER(9) PRIMARY KEY,
	playerID 		NUMBER(9) FOREIGN KEY,
	skillName		VARCHAR2(20),
	rank			NUMBER(3) DEFAULT(0),
	classSkill		CHAR(1) DEFAULT('N'),
	synergyBonus	NUMBER(2) DEFAULT(0),
	CONSTRAINT Player_skills_skillID_pk PRIMARY KEY(skillID),
	CONSTRAINT Player_skills_playerID_fk FOREIGN KEY(playerID) REFERENCES Player.character(playerID));

CREATE TABLE Player.pack(
	itemID		NUMBER(9) FOREIGN KEY,
	playerID 	NUMBER(9) FOREIGN KEY,
	itemName	VARCHAR2(20),
	description	VARCHAR2(50),
	weight		NUMBER(3),
	quantity	NUMBER(5),
	CONSTRAINT itemID_playerID_pk PRIMARY KEY(itemID,playerID),
	CONSTRAINT player_pack_itemID_fk FOREIGN KEY(itemID) REFERENCES items.all(itemID),
	CONSTRAINT player_pack_playerID_fk FOREIGN KEY(playerID) REFERENCES Player.character(playerID));