DROP DATABASE IF EXISTS chinook;

CREATE DATABASE chinook;

USE chinook;

CREATE TABLE IF NOT EXISTS Employee(
EmployeeId INTEGER NOT NULL,
LastName VARCHAR(20),
FirstName VARCHAR(20),
Title VARCHAR(30),
ReportsTo INTEGER,
Birthdate DATE,
Hiredate DATE,
Address VARCHAR(70),
Primary KEY (EmployeeId)
); 

CREATE TABLE IF NOT EXISTS Customers(
CustomerID INTEGER NOT NULL,
LastName VARCHAR(20),
FirstName VARCHAR(20),
Company VARCHAR(30),
Phone VARCHAR(20),
Email VARCHAR(100),
SupportRepId INTEGER,
Address VARCHAR(70),
Primary Key (CustomerID),
Foreign Key (SupportRepId) REFERENCES Employee(EmployeeId)
); 

CREATE TABLE IF NOT EXISTS Invoices(
InvoiceID INTEGER NOT NULL,
CustomerID INTEGER,
InvoiceDate Date,
BillingAddress VARCHAR(100),
TrackId INTEGER,
PRIMARY KEY (InvoiceID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
); 

CREATE TABLE IF NOT EXISTS Artists(
ArtistId INTEGER NOT NULL,
Name VARCHAR(120),
Primary Key (ArtistId)
);

CREATE TABLE IF NOT EXISTS Albums(
AlbumId INTEGER NOT NULL,
Title VARCHAR(160),
AritistId INTEGER,
PRIMARY KEY (AlbumId),
FOREIGN KEY (AritistId) REFERENCES Artists(ArtistId)
);

CREATE TABLE IF NOT EXISTS Tracks(
TrackId INTEGER NOT NULL,
Name VARCHAR(200),
AlbumId INTEGER, 
UnitPrice Decimal,
PRIMARY KEY (TrackId),
FOREIGN KEY (AlbumId) REFERENCES Albums(AlbumId) 
);





