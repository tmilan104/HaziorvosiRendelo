# Háziorvosi rendelő adatbázis

Egy háziorvosi rendelő modellezését választottuk. 
Létrehoztuk hozzá az 5 táblát, készítettünk hozzá teszt adatokat, illetve írtunk pár hasznos/érdekes lekérdezést.

## Logikai modell

### paciensek tábla
- paciens_id (PK)
- nev
- szuletesi_datum
- email
- telefon

### orvosok tábla
- orvos_id (PK)
- nev
- szakterulet
- email

### vizsgalatok tábla
- vizsgalat_id (PK)
- paciens_id (FK → paciensek)
- orvos_id (FK → orvosok)
- datum
- panasz
- diagnozis

### receptek tábla
- recept_id (PK)
- vizsgalat_id (FK → vizsgalatok)
- gyogyszer_nev
- adagolas

### beutalok tábla
- beutalo_id (PK)
- vizsgalat_id (FK → vizsgalatok)
- cel_szakterulet
- indoklas

### Kapcsolatok:
- Egy paciens több vizsgálaton is részt vehet.
- Egy orvos több vizsgálatot végezhet.
- Egy vizsgálathoz több recept és/vagy beutaló tartozhat.

## Fájlok

- `create_tables.sql`: Az adatbázis szerkezetének létrehozása
- `insert_data.sql`: Tesztadatok beszúrása
- `queries.sql`: Lekérdezések, amelyek gyakorlati funkciókat valósítanak meg

## Készítette
- Tibenszki Milán
- Vitos András
- Zeaiter Ali
