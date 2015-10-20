drop table non_members, membership_dues, mailing_list, admin_users, heard, signin_sheet, day_id, all_people;


CREATE TABLE all_people
(
personID int AUTO_INCREMENT PRIMARY KEY,
firstName varchar(50),
lastName varchar(50),
email varchar(100),
phoneNumber varchar(100),
skillLevel varchar(50),
gradeLevel varchar(50),
ownsBoat int,
ipAddress varchar(50),
UNIQUE KEY (firstName, lastName)
);

CREATE TABLE admin_users
(
personID int PRIMARY KEY,
FOREIGN KEY (personID) REFERENCES all_people(personID)
);

CREATE TABLE mailing_list
(
personID int PRIMARY KEY,
FOREIGN KEY (personID) REFERENCES all_people(personID)
);

CREATE TABLE membership_dues
(
personID int,
membershipStatus varchar(50),
FOREIGN KEY (personID) REFERENCES all_people(personID)
);

CREATE TABLE non_members
(
personID int,
FOREIGN KEY (personID) REFERENCES all_people(personID)
);

CREATE TABLE heard
(
personID int PRIMARY KEY,
heardInfo varchar(200),
FOREIGN KEY (personID) REFERENCES all_people(personID)
);

CREATE TABLE day_id
(
dayID int AUTO_INCREMENT PRIMARY KEY,
dateInfo varchar(100) UNIQUE KEY
);

CREATE TABLE signin_sheet
(
personID int,
dayID int,
FOREIGN KEY (personID) REFERENCES all_people(personID),
FOREIGN KEY (dayID) REFERENCES day_id(dayID),
PRIMARY KEY (personID, dayID)
);

CREATE TABLE year_id
(
yearID int AUTO_INCREMENT PRIMARY KEY,
year varchar(4)
);

CREATE TABLE gas_pass_members
(
personID int,
yearID int,
FOREIGN KEY (personID) REFERENCES all_people(personID),
FOREIGN KEY (yearID) REFERENCES year_id(yearID),
PRIMARY KEY (personID, yearID)
);

CREATE TABLE social_members
(
personID int,
yearID int,
FOREIGN KEY (personID) REFERENCES all_people(personID),
FOREIGN KEY (yearID) REFERENCES year_id(yearID),
PRIMARY KEY (personID, yearID)
);


CREATE TABLE current_year
(
	yearID int,
	FOREIGN KEY (yearID) REFERENCES year_id(yearID)
);

CREATE TABLE regionals_general
(
    personID int,
    yearID int,
    FOREIGN KEY (personID) REFERENCES all_people(personID),
    FOREIGN KEY (yearID) REFERENCES year_id(yearID),
    PRIMARY KEY (personID, yearID)
);
