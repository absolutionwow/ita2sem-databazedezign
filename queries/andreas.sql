-- Your queries here

/*Opgave 3.1*/
SELECT 
    Shelter.ShelterNavn,
    Lokalitet.LokalitetNavn
FROM Shelter
JOIN Lokalitet
    ON Shelter.LokalitetID = Lokalitet.LokalitetID;

/*Opgave 3.2*/
SELECT
    Shelter.ShelterID,
    Shelter.ShelterNavn
FROM Shelter
WHERE Shelter.ShelterID NOT IN (
    SELECT Booking.ShelterID
    From Booking
    WHERE '2025-03-16' BETWEEN Booking.Fra AND Booking.Til
);

/*Opgave 3.3*/
INSERT INTO Booking (BookingID, BrugerID, ShelterID, Fra, Til)
VALUES
(6, 101, 3, '2025-03-20', '2025-03-21'),
(7, 102, 1, '2025-03-22', '2025-03-23');

/*Opgave 3.4*/
SELECT
    Bruger.Brugernavn,
    Shelter.ShelterNavn,
    Booking.Fra,
    Booking.Til
FROM Booking
JOIN Bruger
    ON Booking.BrugerID = Bruger.BrugerID
Join Shelter
    On Booking.ShelterID = Shelter.ShelterID
WHERE Bruger.BrugerID = 101;

/*Opgave 3.5*/
SELECT DISTINCT
    Bruger.BrugerNavn,
    Shelter.ShelterNavn,
    Booking.Fra,
    Booking.Til
FROM Booking
JOIN Bruger
    ON Booking.BrugerID = Bruger.BrugerID
JOIN Shelter
    ON Booking.ShelterID = Shelter.ShelterID
WHERE Booking.Fra <= '2024-03-15'
AND Booking.Til >= '2024-03-30';

