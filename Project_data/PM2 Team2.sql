CREATE SCHEMA IF NOT EXISTS AirbnbHotelSeattle;
USE AirbnbHotelSeattle;

DROP TABLE IF EXISTS Park;
DROP TABLE IF EXISTS Restaurant;
DROP TABLE IF EXISTS ThingsToDo;
DROP TABLE IF EXISTS Reviews;
DROP TABLE IF EXISTS AirbnbListing;
DROP TABLE IF EXISTS Hosts;
DROP TABLE IF EXISTS Neighborhood;
DROP TABLE IF EXISTS ZipCode;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
  UserId INT,
  UserName VARCHAR(255),
  CONSTRAINT pk_Users_UserId PRIMARY KEY (UserId)
);

CREATE TABLE ZipCode (
  ZipCodeId INT NOT NULL,
  ZipCodeNumber INT,
  CONSTRAINT pk_ZipCode_ZipCodeId PRIMARY KEY (ZipCodeId)
);

CREATE TABLE Neighborhood (
  NeighborhoodId INT,
  NeighborhoodName VARCHAR(255),
  ZipCodeId INT,
  CONSTRAINT pk_Neighborhood_NeighborhoodId PRIMARY KEY (NeighborhoodId),
  CONSTRAINT fk_Neighborhood_ZipCodeId FOREIGN KEY (ZipCodeId)
  REFERENCES ZipCode(ZipCodeId)
  ON UPDATE CASCADE ON DELETE SET NULL
);


CREATE TABLE Hosts (
  HostId INT NOT NULL,
  HostUrl TEXT,
  HostName VARCHAR(255),
  Since DATE,
  About TEXT,
  ResponseRate INT,
  AcceptanceRate INT,
  CONSTRAINT pk_Hosts_HostId PRIMARY KEY (HostId)
);

CREATE TABLE AirbnbListing (
ListingId BIGINT,
Listing_url TEXT,
Description TEXT,
Neighborhood_Overview TEXT,
Picture_URL TEXT,
Latitude FLOAT,
Longitude FLOAT,
Property_Type VARCHAR(255),
Room_Type VARCHAR(255),
Accommdates INT,
Bathrooms FLOAT,
Bedrooms FLOAT,
Beds FLOAT,
Price DECIMAL(6,2),
HostId INT,
Name VARCHAR(255),
NeighborhoodId INT,
CONSTRAINT pk_AirbnbListing_ListingId
    PRIMARY KEY (ListingId),
CONSTRAINT fk_AirbnbListing_HostId
    FOREIGN KEY (HostId)
    REFERENCES Hosts(HostId)
    ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_AirbnbListing_NeighborhoodId
    FOREIGN KEY (NeighborhoodId)
    REFERENCES Neighborhood(NeighborhoodId)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Reviews (
  ReviewId BIGINT,
  UserId INT,
  UserName VARCHAR(255),
  Created DATE,
  Content TEXT NOT NULL,
  ListingId bigint,
  CONSTRAINT pk_Reviews_ReviewId PRIMARY KEY (ReviewId),
  CONSTRAINT fk_Reviews_UserId FOREIGN KEY (UserId)
  REFERENCES Users(UserId)
  ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_Reviews_ListingId FOREIGN KEY (ListingId)
  REFERENCES AirbnbListing(ListingId)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ThingsToDo (
    Name VARCHAR(255),
    Address VARCHAR(255),
    Longitude float,
    Latitude float,
    ZipCodeId INT,
	PRIMARY KEY (Name,Address),
	FOREIGN KEY (ZipCodeId)
    REFERENCES ZipCode(ZipCodeId)
    ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Restaurant (
 Name VARCHAR(255),
 Address VARCHAR(255), 
 PRIMARY KEY (Name, Address),
 FOREIGN KEY (Name, Address)
 REFERENCES ThingsToDo(Name,Address)
 ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Park (
 Name VARCHAR(255),
 Address VARCHAR(255),
 PRIMARY KEY (Name, Address),
 FOREIGN KEY (Name, Address)
 REFERENCES ThingsToDo(Name,Address)
 ON UPDATE CASCADE ON DELETE CASCADE
);

