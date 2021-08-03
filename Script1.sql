create database wrestlingData;

use wrestlingData;

create table wrestlers(
wrestlerID int,
ssn int,
PRIMARY KEY(wrestlerID, ssn),
gender varchar(10),
wrestlerName varchar(40),
wrestlerZip int,
wrestlerPhone bigint,
wrestlerEmail varchar(45)
);

create table promotion(
promotionID int primary key,
promotionGender varchar(10),
promotionName varchar(45),
arena varchar(30),
revenue FLOAT,
tvDeal BOOLEAN
);

create table laws(
cityID int primary key,
hardcore BOOLEAN,
cityName varchar(45),
isWrestlingBanned BOOLEAN
);

create table wrestlerPromotionRelationship(
payForEvent FLOAT,
wrestlerID int primary key,
promotionID int,
dateWrestlerAppear DATE,
constraint WPR_fk
FOREIGN KEY(promotionID)
references promotion(promotionID),
constraint WPR2_fk
FOREIGN KEY(wrestlerID)
references wrestlers(wrestlerID)
);

create table promotionSpecificLegality(
promotionID int primary key,
maleOnFemaleV BOOLEAN,
fanParticipation BOOLEAN,
officialPromotion BOOLEAN,
isSpecificPromotionAllowed BOOLEAN,
cityID int,
constraint PSL_fk
FOREIGN KEY(cityID)
references laws(cityID),
constraint PSL2_fk
FOREIGN KEY(promotionID)
references promotion(promotionID)
);