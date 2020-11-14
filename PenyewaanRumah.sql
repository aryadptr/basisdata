CREATE TABLE branch (
  branchNo char(5) NOT NULL,
  street varchar(35) DEFAULT NULL,
  city varchar(10) DEFAULT NULL,
  postcode varchar(10) DEFAULT NULL
) ;

INSERT INTO branch VALUES('B002', '56 Clover Dr', 'London', 'NW10 6EU');
INSERT INTO branch VALUES('B003', '163 Main St', 'Glasgow', 'G11 9QX');
INSERT INTO branch VALUES('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ');
INSERT INTO branch VALUES('B005', '22 Deer Rd', 'London', 'SW1 4EH');
INSERT INTO branch VALUES('B007', '16 Argyll St', 'Aberdeen', 'AB2 3SU');

CREATE TABLE `client` (
  clientNo char(5) NOT NULL,
  fName varchar(10) DEFAULT NULL,
  lName varchar(10) DEFAULT NULL,
  telNo char(15) DEFAULT NULL,
  prefType varchar(10) DEFAULT NULL,
  maxRent int(11) DEFAULT NULL
);

INSERT INTO `client` VALUES('CR56', 'Aline', 'Steward', '0141-848-1825', 'Flat', 350);
INSERT INTO `client` VALUES('CR62', 'Mary', 'Tregear', '01224-196720', 'Flat', 600);
INSERT INTO `client` VALUES('CR74', 'Mike', 'Ritchie', '01475-943-1728', 'House', 750);
INSERT INTO `client` VALUES('CR76', 'John', 'Kay', '0171-774-5632', 'Flat', 425);

CREATE TABLE privateOwner (
  ownerNo char(5) NOT NULL,
  fName varchar(10) DEFAULT NULL,
  lName varchar(10) DEFAULT NULL,
  address varchar(50) DEFAULT NULL,
  telNo char(15) DEFAULT NULL
);

INSERT INTO privateOwner VALUES('CO40', 'Tina', 'Murphy', '63 Well St. Glasgow G42', '0141-943-1728');
INSERT INTO privateOwner VALUES('CO46', 'Joe', 'Keogh', '2 Fergus Dr. Aberdeen AB2 ', '01224-861212');
INSERT INTO privateOwner VALUES('CO87', 'Carol', 'Farrel', '6 Achray St. Glasgow G32 9DX', '0141-357-7419');
INSERT INTO privateOwner VALUES('CO93', 'Tony', 'Shaw', '12 Park Pl. Glasgow G4 0QR', '0141-225-7025');

CREATE TABLE propertyForRent (
  propertyNo char(5) NOT NULL,
  street varchar(35) DEFAULT NULL,
  city varchar(10) DEFAULT NULL,
  postcode varchar(10) DEFAULT NULL,
  type varchar(10) DEFAULT NULL,
  rooms smallint(6) DEFAULT NULL,
  rent int(11) DEFAULT NULL,
  ownerNo char(5) NOT NULL,
  staffNo char(5) DEFAULT NULL,
  branchNo char(5) DEFAULT NULL
);

INSERT INTO propertyForRent VALUES('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'CO46', 'SA9', 'B007');
INSERT INTO propertyForRent VALUES('PG16', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003');
INSERT INTO propertyForRent VALUES('PG21', '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'CO87', 'SG37', 'B003');
INSERT INTO propertyForRent VALUES('PG36', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003');
INSERT INTO propertyForRent VALUES('PG4', '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', NULL, 'B003');
INSERT INTO propertyForRent VALUES('PL94', '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'CO87', 'SL41', 'B005');

CREATE TABLE registration (
  clientNo char(5) NOT NULL,
  branchNo char(5) NOT NULL,
  staffNo char(5) NOT NULL,
  dateJoined date DEFAULT NULL
);

INSERT INTO registration VALUES('CR76', 'B005', 'SL41', '2015-01-13');
INSERT INTO registration VALUES('CR56', 'B003', 'SG37', '2014-04-13');
INSERT INTO registration VALUES('CR74', 'B003', 'SG37', '2013-11-16');
INSERT INTO registration VALUES('CR62', 'B007', 'SA9', '2014-03-07');

CREATE TABLE staff (
  staffNo char(5) NOT NULL,
  fName varchar(10) DEFAULT NULL,
  lName varchar(10) DEFAULT NULL,
  position varchar(10) DEFAULT NULL,
  sex char(1) DEFAULT NULL,
  DOB date DEFAULT NULL,
  salary int(11) DEFAULT NULL,
  branchNo char(5) DEFAULT NULL
);

INSERT INTO staff VALUES('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1990-02-19', 9000, 'B007');
INSERT INTO staff VALUES('SG14', 'David', 'Ford', 'Supervisor', 'M', '1978-03-24', 18000, 'B003');
INSERT INTO staff VALUES('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1980-11-10', 12000, 'B003');
INSERT INTO staff VALUES('SG5', 'Susan', 'Brand', 'Manager', 'F', '1960-06-03', 24000, 'B003');
INSERT INTO staff VALUES('SL21', 'John', 'White', 'Manager', 'M', '1965-10-01', 30000, 'B005');
INSERT INTO staff VALUES('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1985-06-13', 9000, 'B005');

CREATE TABLE viewing (
  clientNo char(5) NOT NULL,
  propertyNo char(5) NOT NULL,
  viewDate date DEFAULT NULL,
  comment varchar(15) DEFAULT NULL
);

INSERT INTO viewing VALUES('CR56', 'PA14', '2015-05-24', 'too small');
INSERT INTO viewing VALUES('CR76', 'PG4', '2015-04-20', 'too remote');
INSERT INTO viewing VALUES('CR56', 'PG4', '2015-05-26', '');
INSERT INTO viewing VALUES('CR62', 'PA14', '2015-05-14', 'no dining room');
INSERT INTO viewing VALUES('CR56', 'PG36', '2015-04-28', '');


ALTER TABLE branch
  ADD PRIMARY KEY (branchNo);

ALTER TABLE `client`
  ADD PRIMARY KEY (clientNo);

ALTER TABLE privateOwner
  ADD PRIMARY KEY (ownerNo);

ALTER TABLE propertyForRent
  ADD PRIMARY KEY (propertyNo);

ALTER TABLE staff
  ADD PRIMARY KEY (staffNo);
