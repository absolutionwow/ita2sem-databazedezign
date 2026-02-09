CREATE DATABASE ShelterDB 
LANGUAGE plpgsql
AS $$
BEGIN
    CREATE TABLE Bruger (
        BrugerID INT PRIMARY KEY,
        BrugerNavn TEXT,
        Email TEXT
    )

    CREATE TABLE Lokalitet (
        LoktalitetID INT PRIMARY KEY,
        LokatalitetNavn TEXT
    )

    CREATE TABLE Shelter (
        ShelterID INT PRIMARY KEY,
        ShelterNavn TEXT,
        Areal INT,
        Billede TEXT,
        LokalitetID INT FOREIGN KEY
    )

    CREATE TABLE Booking (
        BookingID INT PRIMARY KEY,
        BrugerID INT FOREIGN KEY,
        ShelterID INT FOREIGN KEY,
        Fra DATE,
        Til DATE
    )

    INSERT INTO Bruger VALUES (101, "Jens", "jens@gmail.com");
    INSERT INTO Bruger VALUES (102, "Mette", "mette@gmail.com");
    INSERT INTO Bruger VALUES (103, "Henrik", "henrik@gmail.com");

    INSERT INTO Lokalitet VALUES (1, "Skovhytte");
    INSERT INTO Lokalitet VALUES (2, "Strandhytte");
    INSERT INTO Lokalitet VALUES (3, "Bjerghytte");

    INSERT INTO Shelter VALUES (1, "Shelter A", 30, "images/a.png", 1);
    INSERT INTO Shelter VALUES (2, "Shelter B", 40, "images/b.png", 1);
    INSERT INTO Shelter VALUES (3, "Shelter C", 25, "images/c.png", 2);
    INSERT INTO Shelter VALUES (4, "Shelter D", 50, "images/d.png", 3);
    INSERT INTO Shelter VALUES (5, "Shelter E", 45, "images/e.png", 3);

    INSERT INTO Booking VALUES (1, 101, 1, 2025-03-15, 2025-03-16);
    INSERT INTO Booking VALUES (1, 101, 2, 2025-03-15, 2025-03-16);
    INSERT INTO Booking VALUES (2, 102, 3, 2025-03-16, 2025-03-17);
    INSERT INTO Booking VALUES (3, 103, 4, 2025-03-17, 2025-03-18);
    INSERT INTO Booking VALUES (3, 103, 5, 2025-03-17, 2025-03-18);


