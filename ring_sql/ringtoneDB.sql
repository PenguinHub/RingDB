create database ringtone


create table people
	(
		id int NOT NULL AUTO_INCREMENT,
		firstName VARCHAR(25),
		lastName VARCHAR(25),
		PRIMARY KEY(id)
	)

create table songs
	(
		id int NOT NULL AUTO_INCREMENT,
		title VARCHAR(20),
		artist VARCHAR(20),
		PRIMARY KEY(id)
	)

create table people_songs
	(

		personID int,
		songID int
		FOREIGN KEY (personID) 
        REFERENCES people(id),
        FOREIGN KEY (songID) 
        REFERENCES songs(id)
	)