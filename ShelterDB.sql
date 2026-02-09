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

    INSERT INTO Bruger VALUES ()


