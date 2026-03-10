-- Define tables here
CREATE TABLE Bruger (
    BrugerID SERIAL PRIMARY KEY,
    Navn VARCHAR(100) NOT NULL
);

CREATE TABLE Lokalitet (
    LokalitetID SERIAL PRIMARY KEY,
    Navn VARCHAR(100) NOT NULL
);

CREATE TABLE Shelter (
    ShelterID SERIAL PRIMARY KEY,
    Navn VARCHAR(100) NOT NULL,
    LokalitetID INT NOT NULL,
    FOREIGN KEY (LokalitetID) REFERENCES Lokalitet(LokalitetID)
);

CREATE TABLE Booking (
    BookingID SERIAL PRIMARY KEY,
    BrugerID INT NOT NULL,
    ShelterID INT NOT NULL,
    Fra DATE NOT NULL,
    Til DATE NOT NULL,
    FOREIGN KEY (BrugerID) REFERENCES Bruger(BrugerID) ON DELETE CASCADE,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID) ON DELETE CASCADE
);
