-- Create Incidents Table
CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY,
    IncidentType VARCHAR(255),
    IncidentDate DATE,
    Location VARCHAR(255),
    Descriptions TEXT,
    Statuss VARCHAR(20),
    VictimID INT,
    SuspectID INT
);

-- Create Victims Table
CREATE TABLE Victims (
    VictimID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(255)
);

-- Create Suspects Table
CREATE TABLE Suspects (
    SuspectID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInformation VARCHAR(255)
);

-- Create Law Enforcement Agencies Table
CREATE TABLE LawEnforcementAgencies (
    AgencyID INT PRIMARY KEY,
    AgencyName VARCHAR(100),
    Jurisdiction VARCHAR(100),
    ContactInformation VARCHAR(255)
);

-- Create Officers Table
CREATE TABLE Officers (
    OfficerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BadgeNumber VARCHAR(20),
    Ranks VARCHAR(50),
    ContactInformation VARCHAR(255),
    AgencyID INT
);

-- Create Evidence Table
CREATE TABLE Evidence (
    EvidenceID INT PRIMARY KEY,
    Description TEXT,
    LocationFound VARCHAR(255),
    IncidentID INT
);

-- Create Reports Table
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY,
    IncidentID INT,
    ReportingOfficer INT,
    ReportDate DATE,
    ReportDetails TEXT,
    Status VARCHAR(20)
);

CREATE TABLE cases (
    caseID INT PRIMARY KEY,
    caseDescription VARCHAR(255),
    incidentID INT,
    FOREIGN KEY (incidentID) REFERENCES incidents(incidentID)
);

-- Insert Sample Data for Incidents
INSERT INTO Incidents VALUES
(1, 'Robbery', '2023-01-15', '37.7749° N, 122.4194° W', 'Armed robbery at a convenience store', 'Open', 101, 201),
(2, 'Homicide', '2023-02-20', '34.0522° N, 118.2437° W', 'Investigating a murder case', 'Under Investigation', 102, 202),
(3, 'Theft', '2023-03-10', '40.7128° N, 74.0060° W', 'Shoplifting incident at a mall', 'Closed', 103, 203),
(4, 'Robbery', '2023-04-05', '41.8781° N, 87.6298° W', 'Bank robbery in progress', 'Open', 104, 204),
(5, 'Homicide', '2023-05-22', '33.4484° N, 112.0740° W', 'Investigating a suspicious death', 'Under Investigation', 105, 205);

-- Insert Sample Data for Victims
INSERT INTO Victims VALUES
(101, 'John', 'Doe', '1985-08-12', 'Male', '123 Main St, City, Country, 555-1234'),
(102, 'Jane', 'Smith', '1990-04-25', 'Female', '456 Oak St, City, Country, 555-5678'),
(103, 'Robert', 'Johnson', '1982-12-03', 'Male', '789 Elm St, City, Country, 555-9876'),
(104, 'Emily', 'Davis', '1995-07-18', 'Female', '101 Pine St, City, Country, 555-4321'),
(105, 'Michael', 'Williams', '1988-02-28', 'Male', '202 Cedar St, City, Country, 555-8765');

-- Insert Sample Data for Suspects
INSERT INTO Suspects VALUES
(201, 'Jack', 'Robinson', '1980-06-15', 'Male', '321 Maple St, City, Country, 555-1111'),
(202, 'Sara', 'Miller', '1992-09-20', 'Female', '654 Birch St, City, Country, 555-2222'),
(203, 'David', 'White', '1987-03-08', 'Male', '987 Pine St, City, Country, 555-3333'),
(204, 'Linda', 'Harris', '1993-11-14', 'Female', '111 Oak St, City, Country, 555-4444'),
(205, 'Christopher', 'Lee', '1983-05-30', 'Male', '222 Cedar St, City, Country, 555-5555');

-- Insert Sample Data for Law Enforcement Agencies
INSERT INTO LawEnforcementAgencies VALUES
(301, 'City Police Department', 'City, Country', '123 Main St, City, Country, 555-9999'),
(302, 'County Sheriff Office', 'County, Country', '456 Elm St, City, Country, 555-8888'),
(303, 'State Bureau of Investigation', 'State, Country', '789 Oak St, City, Country, 555-7777'),
(304, 'Federal Bureau of Investigation', 'Federal', '101 Pine St, City, Country, 555-6666'),
(305, 'Special Investigations Unit', 'City, Country', '202 Cedar St, City, Country, 555-5555');

-- Insert Sample Data for Officers
INSERT INTO Officers VALUES
(401, 'Officer', 'Johnson', '12345', 'Detective', '321 Maple St, City, Country, 555-1111', 301),
(402, 'Officer', 'Smith', '54321', 'Sergeant', '654 Birch St, City, Country, 555-2222', 302),
(403, 'Agent', 'Brown', '98765', 'Special Agent', '987 Pine St, City, Country, 555-3333', 303),
(404, 'Agent', 'Davis', '56789', 'Senior Agent', '111 Oak St, City, Country, 555-4444', 304),
(405, 'Sergeant', 'Williams', '11223', 'Investigator', '222 Cedar St, City, Country, 555-5555', 305);

-- Insert Sample Data for Evidence
INSERT INTO Evidence VALUES
(501, 'Fingerprints on the crime scene', 'Near the store counter', 1),
(502, 'CCTV footage from the incident', 'In the bank premises', 4),
(503, 'Weapon used in the crime', 'At the crime scene', 2),
(504, 'Blood samples from the crime scene', 'In the victim house', 5),
(505, 'Suspects clothing found at the scene', 'In the alley', 3);

-- Insert Sample Data for Reports
INSERT INTO Reports VALUES
(601, 1, 401, '2023-01-20', 'Initial incident report', 'Draft'),
(602, 2, 402, '2023-02-25', 'Investigation findings report', 'Finalized'),
(603, 3, 403, '2023-03-15', 'Closure report', 'Finalized'),
(604, 4, 404, '2023-04-10', 'Ongoing investigation report', 'Draft'),
(605, 5, 405, '2023-05-25', 'Progress report', 'Draft');

INSERT INTO cases (caseID, caseDescription, incidentID)
VALUES
  (1, 'Robbery Investigation', 1),
  (2, 'Homicide Investigation', 2),
  (3, 'Theft Investigation', 3),
  (4, 'Assault Investigation', 4),
  (5, 'Burglary Investigation', 5);