CREATE DATABASE ShelterDB 
LANGUAGE plpgsql
AS $$
BEGIN
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


INSERT INTO Bruger VALUES
(101, 'Jens', 'jens@gmail.com'),
(102, 'Mette', 'mette@gmail.com'),
(103, 'Henrik', 'henrik@gmail.com');

INSERT INTO Lokalitet VALUES
(1, 'Skovhytte'),
(2, 'Strandhytte'),
(3, 'Bjerghytte');

INSERT INTO Shelter VALUES
(1, 'Shelter A', 30, 'images/a.png', 1),
(2, 'Shelter B', 40, 'images/b.png', 1),
(3, 'Shelter C', 25, 'images/c.png', 2),
(4, 'Shelter D', 50, 'images/d.png', 3),
(5, 'Shelter E', 45, 'images/e.png', 3);

INSERT INTO Booking VALUES
(1, 101, 1, '2025-03-15', '2025-03-16'),
(2, 101, 2, '2025-03-15', '2025-03-16'),
(3, 102, 3, '2025-03-16', '2025-03-17'),
(4, 103, 4, '2025-03-17', '2025-03-18'),
(5, 103, 5, '2025-03-17', '2025-03-18');



