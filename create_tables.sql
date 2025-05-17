CREATE TABLE paciensek (
    paciens_id INT PRIMARY KEY,
    nev VARCHAR(100),
    szuletesi_datum DATE,
    email VARCHAR(100),
    telefon VARCHAR(20)
);

CREATE TABLE orvosok (
    orvos_id INT PRIMARY KEY,
    nev VARCHAR(100),
    szakterulet VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE vizsgalatok (
    vizsgalat_id INT PRIMARY KEY,
    paciens_id INT,
    orvos_id INT,
    datum DATE,
    panasz TEXT,
    diagnozis TEXT,
    FOREIGN KEY (paciens_id) REFERENCES paciensek(paciens_id),
    FOREIGN KEY (orvos_id) REFERENCES orvosok(orvos_id)
);

CREATE TABLE receptek (
    recept_id INT PRIMARY KEY,
    vizsgalat_id INT,
    gyogyszer_nev VARCHAR(100),
    adagolas VARCHAR(100),
    FOREIGN KEY (vizsgalat_id) REFERENCES vizsgalatok(vizsgalat_id)
);

CREATE TABLE beutalok (
    beutalo_id INT PRIMARY KEY,
    vizsgalat_id INT,
    cel_szakterulet VARCHAR(100),
    indoklas TEXT,
    FOREIGN KEY (vizsgalat_id) REFERENCES vizsgalatok(vizsgalat_id)
);
