CREATE OR REPLACE FUNCTION get_bookinger_for_bruger(p_BrugerID INT)
RETURNS TABLE (
    BookingID INT,
    ShelterID INT,
    Fra DATE,
    Til DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
        SELECT 
            b.BookingID,
            b.ShelterID,
            b.Fra,
            b.Til
        FROM Booking b
        WHERE b.BrugerID = p_BrugerID;
END;
$$;

--Kør psql "$DATABASE_URL" -f queries/opgave2.sql for at lave funktionen
--psql "$DATABASE_URL" -c "SELECT * FROM get_bookinger_for_bruger(1);"

CREATE OR REPLACE FUNCTION get_shelters_for_lokalitet(p_LokalitetID INT)
RETURNS TABLE (
    ShelterID INT,
    ShelterNavn VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
        SELECT 
            b.ShelterID,
            b.Navn
        FROM Shelter b
        WHERE b.LokalitetID = p_LokalitetID;
END;
$$;

--psql "$DATABASE_URL" -c "SELECT * FROM get_shelters_for_lokalitet(1)

