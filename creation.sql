CREATE DATABASE projetc2a2;

USE projetc2a2;

CREATE TABLE 2acClass(
	idClass INTEGER PRIMARY KEY,
	job VARCHAR(100),
	price FLOAT /*double*/
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
);