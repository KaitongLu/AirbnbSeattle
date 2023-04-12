USE AirbnbHotelSeattle;

LOAD DATA INFILE '/tmp/newusers.csv' INTO TABLE Users
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;
  
  
  LOAD DATA INFILE '/tmp/host_updated.csv' INTO TABLE Hosts
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES;
  
  LOAD DATA INFILE '/tmp/ZipCode.csv' INTO TABLE ZipCode
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES;
  
  LOAD DATA INFILE '/tmp/neighborhood.csv' INTO TABLE Neighborhood
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES;
  
  LOAD DATA INFILE '/tmp/combinedListing.csv' INTO TABLE AirbnbListing
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n';
  
  LOAD DATA INFILE '/tmp/review.csv' INTO TABLE Reviews
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n';
  
  SET foreign_key_checks = 1;
  LOAD DATA INFILE '/tmp/thingtodo.csv' INTO TABLE ThingsToDo
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES;
  
  LOAD DATA INFILE '/tmp/Res2.csv' INTO TABLE Restaurant
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;
  
  LOAD DATA INFILE '/tmp/Park2.csv' INTO TABLE Park
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES;
  
  
  
  select count(DISTINCT listingid)
  from Airbnblisting;
  
  
  
  
  
  
  
  
  