/*Opgave 1*/
SELECT 
Shelter.ShelterNavn,
Lokatitet.LokalitetNavn
FROM Shelter
JOIN Lokalitet
    ON Shelter.LokalitetID = Lokalitet.LokalitetID;