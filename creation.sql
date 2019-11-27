CREATE DATABASE projetc2a2;

USE projetc2a2;

CREATE TABLE 2acClass(
	idClass INTEGER PRIMARY KEY,
	job VARCHAR(100),
	price FLOAT
);

CREATE TABLE 2acSchedule(
	idSchedule INTEGER PRIMARY KEY,
	beginHour VARCHAR(10),
	endHour VARCHAR(10)
);

CREATE TABLE 2acLawyer(
	idLawyer INTEGER PRIMARY KEY,
	lastName VARCHAR(150),
	firstname VARCHAR(150),
	emailAddress VARCHAR(320),
	pwd CHAR(60),
	createDate DATE,
	token VARCHAR(25),
	class INTEGER,
	schedule INTEGER NOT NULL,
	FOREIGN KEY class REFERENCES 2acClass(idClass),
	FOREIGN KEY schedule REFERENCES 2acSchedule(idSchedule)
);

CREATE TABLE 2acContractType(
	idContract INTEGER PRIMARY KEY,
	name VARCHAR(100),
	type VARCHAR(100)
);

CREATE TABLE 2acClient(
	idClient INTEGER PRIMARY KEY,
	lastName VARCHAR(150),
	firstname VARCHAR(150),
	emailAddress VARCHAR(320),
	pwd CHAR(60),
	createDate DATE,
	token VARCHAR(25),
	contract INTEGER NOT NULL,
	FOREIGN KEY contract REFERENCES 2acContractType(idContract)
);

CREATE TABLE 2acMeeting(
	idMeeting INTEGER PRIMARY KEY,
	type VARCHAR(200),
	date DATE,
	description TEXT,
	comment TEXT
);

CREATE TABLE 2acContact(
	idContact INTEGER PRIMARY KEY,
	meeting INTEGER,
	client INTEGER,
	FOREIGN KEY meeting REFERENCES 2acMeeting(idMeeting),
	FOREIGN KEY client REFERENCES 2acClient(idClient)
);

CREATE TABLE 2acMeet(
	idMeet INTEGER PRIMARY KEY,
	meeting INTEGER,
	lawyer INTEGER,
	FOREIGN KEY meeting REFERENCES 2acMeeting(idMeeting),
	FOREIGN KEY lawyer REFERENCES 2acLawyer(idLawyer)
);
