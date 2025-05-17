-- 1. Paciensenként vizsgálatok száma
SELECT p.nev, COUNT(v.vizsgalat_id) AS vizsgalatok_szama
FROM paciensek p
JOIN vizsgalatok v ON p.paciens_id = v.paciens_id
GROUP BY p.nev;

-- 2. Beutalóval rendelkező vizsgálatok
SELECT p.nev, v.datum, b.cel_szakterulet
FROM vizsgalatok v
JOIN paciensek p ON v.paciens_id = p.paciens_id
JOIN beutalok b ON v.vizsgalat_id = b.vizsgalat_id;

-- 3. Orvosok által ellátott páciensek száma
SELECT o.nev, COUNT(DISTINCT v.paciens_id) AS paciensek_szama
FROM orvosok o
JOIN vizsgalatok v ON o.orvos_id = v.orvos_id
GROUP BY o.nev;

-- 4. Gyógyszerek páciensek szerint
SELECT p.nev, r.gyogyszer_nev, r.adagolas
FROM receptek r
JOIN vizsgalatok v ON r.vizsgalat_id = v.vizsgalat_id
JOIN paciensek p ON v.paciens_id = p.paciens_id;

-- 5. Diagnózis gyakorisága
SELECT diagnozis, COUNT(*) AS elofordulasok
FROM vizsgalatok
GROUP BY diagnozis;

-- 6. Utolsó vizsgálat dátuma pácienseknél
SELECT p.nev, MAX(v.datum) AS utolso_vizsgalat
FROM paciensek p
JOIN vizsgalatok v ON p.paciens_id = v.paciens_id
GROUP BY p.nev;

-- 7. Az orvos, aki a legtöbb receptet írta fel
SELECT o.nev, COUNT(r.recept_id) AS receptek_szama
FROM orvosok o
JOIN vizsgalatok v ON o.orvos_id = v.orvos_id
JOIN receptek r ON v.vizsgalat_id = r.vizsgalat_id
GROUP BY o.nev
ORDER BY receptek_szama DESC
LIMIT 1;
