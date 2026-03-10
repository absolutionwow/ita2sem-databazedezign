-- Insert seed data here
INSERT INTO Bruger(Navn) VALUES
('Anna Hansen'),
('Peter Jensen'),
('Maria Sørensen');

INSERT INTO Lokalitet(Navn) VALUES
('Skovparken'),
('Bjergegård'),
('Søbredden');

INSERT INTO Shelter(LokalitetID, Navn) VALUES
(1, 'Skovly'),
(1, 'Trætoppen' ),
(2, 'Bjerghytte'),
(3, 'Søhytte');

INSERT INTO Booking(BrugerID, ShelterID, Fra, Til) VALUES
(1, 1, '2025-10-01', '2025-10-03'),
(2, 3, '2025-10-05', '2025-10-07'),
(3, 3, '2025-10-10', '2025-10-12');