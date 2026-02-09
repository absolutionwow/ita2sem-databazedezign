-- Define tables here
CREATE TABLE Bruger (
    BrugerID INT PRIMARY KEY,
    BrugerNavn TEXT,
    Email TEXT
);

CREATE TABLE Lokalitet (
    LokalitetID INT PRIMARY KEY,
    LokalitetNavn TEXT
);

CREATE TABLE Shelter (
    ShelterID INT PRIMARY KEY,
    ShelterNavn TEXT,
    Areal INT,
    Billede TEXT,
    LokalitetID INT,
    FOREIGN KEY (LokalitetID) REFERENCES Lokalitet(LokalitetID)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    BrugerID INT,
    ShelterID INT,
    Fra DATE,
    Til DATE,
    FOREIGN KEY (BrugerID) REFERENCES Bruger(BrugerID),
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);
