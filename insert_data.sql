INSERT INTO paciensek VALUES
(1, 'Kiss Anna', '1990-04-12', 'anna.kiss@example.com', '06301234567'),
(2, 'Nagy Bela', '1985-09-23', 'bela.nagy@example.com', '06309876543'),
(3, 'Szabo Laszlo', '1978-06-10', 'laszlo.szabo@example.com', '06304561234'),
(4, 'Toth Julia', '1995-12-01', 'julia.toth@example.com', '06301112233'),
(5, 'Varga Gergo', '2000-07-30', 'gergo.varga@example.com', '06305556677');

INSERT INTO orvosok VALUES
(1, 'Dr. Kovacs Laszlo', 'belgyogyaszat', 'kovacs.laszlo@example.com'),
(2, 'Dr. Toth Erika', 'csaladorvos', 'toth.erika@example.com'),
(3, 'Dr. Fekete Andras', 'neurologia', 'fekete.andras@example.com');

INSERT INTO vizsgalatok VALUES
(1, 1, 1, '2025-04-01', 'hasfajas', 'gyomorrontas'),
(2, 2, 2, '2025-04-02', 'fejfajas', 'tenzios fejfajas'),
(3, 3, 2, '2025-04-03', 'torokfajas', 'mandulagyulladas'),
(4, 4, 3, '2025-04-04', 'labzsibbadas', 'idegosszenyomodas'),
(5, 5, 1, '2025-04-05', 'kohoges', 'megfazas'),
(6, 1, 2, '2025-04-10', 'szedules', 'vernyomas ingadozas'),
(7, 2, 3, '2025-04-12', 'hatfajas', 'gerincferdules'),
(8, 3, 1, '2025-04-13', 'allergia', 'szezonalis allergia');

INSERT INTO receptek VALUES
(1, 1, 'No-Spa', '3x1 tabletta'),
(2, 2, 'Algopyrin', '2x1 tabletta'),
(3, 3, 'Strepsils', 'napi 4x szopogatni'),
(4, 4, 'Milgamma', '1x1 kapszula'),
(5, 5, 'ACC Long', '1x1 pezsgotabletta reggel'),
(6, 6, 'Betaloc', '2x1 tabletta'),
(7, 7, 'Cataflam', '1x1 tabletta etkezes utan'),
(8, 8, 'Zyrtec', '1x1 tabletta este');

INSERT INTO beutalok VALUES
(1, 1, 'gasztroenterologia', 'hosszu ideje fennallo panasz'),
(2, 2, 'neurologia', 'gyakori fejfajas miatt'),
(3, 3, 'ful-orr-gegeszet', 'ismetlodo torokgyulladas'),
(4, 4, 'idegsebeszet', 'neuropatias tunetek'),
(5, 5, 'pulmonologia', 'elhuzodo kohoges kivizsgalasa'),
(6, 6, 'kardiologia', 'vernyomasproba javasolt'),
(7, 7, 'ortopedia', 'mozgaszervi panaszok'),
(8, 8, 'allergologia', 'pollenszezon elotti vizsgalat');
