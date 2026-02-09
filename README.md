# README

Hvis du læser filen inde i  VS-code, så kan du se den korrekte struktur ved at trykke CMD + SHIFT + V. Filen vises også  med korrekt struktur inde i GitHub.

## 1. Setup
-Lav en .env-fil

-Indsæt koden fra Google Drive i din .env-fil

-Test at den virker i terminalen:
```
echo $DATABASE_URL
```
Du burde få hele Neon URL'et printet ud i terminalen

-Hvis det ikke virker, så skrive følgende kommando
```
set -a && source.env && set+a
```

## 2. Connect til Neon
-Skriv i Terminalen:
```
psql "$DATABASE_URL"
```

-Din terminal burde vise:
```
neondb=>
```

## 3. Forklaring af filerne
-sql/00_reset.sql bruges til at nulstille databasen

-sql/01_schema.sql bruges til skabe tabeller

-sql/02_seed.sql bruges til at putte data ind i tabellerne. Seed-filen skal indeholde oprindelig data, mens ændring af dataen i øvelser o.lign laves under queries

-queries/navn.sql bruges til at lave queries. Vi har fået hvert vores query skema, sådan at vi har muligheden for at lave opgaver med queries hver for sig.

## 4. Frisk opsætning af database
-Spring over dette skridt, hvis der allerede er oprette en database

-Skrive følgede i terminalen:
```
psql "$DATABASE_URL" -f sql/00_reset.sql
psql "$DATABASE_URL" -f sql/01_schema.sql
psql "$DATABASE_URL" -f sql/02_seed.sql
```

## 5. Queries
-Queries udskrives vha:
```
psql "$DATABASE_URL" -f queries/navn.sql
```
Så hvis jeg ville teste mine queries ville det være:
```
psql "$DATABASE_URL" -f queries/andreas.sql
```
-Du kan også lave queries direkte i terminalen, ved at tilslutte til Neon med:
```
psql "$DATABASE_URL"
```

## 6. Gode PSQL-kommandoer
-**\dt** giver en liste over alle tabeller
-**\d *tabelNavn*** Info om en specifik tabel
-**SELECT * FROM *tabelNavn*;** Viser alt data i en tabel 