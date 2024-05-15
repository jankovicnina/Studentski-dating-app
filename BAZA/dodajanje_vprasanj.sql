-- Active: 1714029462031@@baza.fmf.uni-lj.si@5432@sem2024_mihaj
INSERT INTO Vprasanje (vprasanje) VALUES
('Katerega spola si?'),
('Kateri klub izmed naštetih ti je najljubši?'),
('Kam greš najraje na pivo/koktejl?'),
('Kje najpogosteje ješ na bone?'),
('Na kateri šport se najpogosteje prijaviš preko POPR-a?'),
('Ali imaš zakupljen abonma (npr. pri Drami, Mladinskem gledališču …)'),
('Kje bi bil tvoj sanjski prvi date?'),
('Katera beseda najbolje opiše tvoje študentsko življenje trenutno?'),
('Kakšna je tvoja barv las?'),
('Kako resno razmerje iščeš?'),
('Koliko let imaš?'),
('Katero fakulteto obiskuješ?');

INSERT INTO Mozni_odgovor (mozni_odgovor, id_vprasanja) VALUES
-- Katerega spola si?
('Moški', 1),
('Ženska', 1),
-- Kateri klub izmed naštetih ti je najljubši?
('Cvetličarna', 2),
('K4', 2),
('Cirkus', 2),
('Square', 2),
('Tiffany', 2),
-- Kam greš najraje na pivo/koktejl?
('Foerster', 3),
('Semafor', 3),
('Castle', 3),
('Nabrežje 15', 3),
('Žmauc', 3),
-- Kje najpogosteje ješ na bone?
('Das ist Valter', 4),
('Dabuda', 4),
('McDonald''s', 4),
('Menza FE', 4),
('Foculus', 4),
('Allegria', 4),
('Meta in Bazilika', 4),
-- Na kateri šport se najpogosteje prijaviš preko POPR-a?
('Odbojka', 5),
('Fitnes', 5),
('Joga', 5),
('Pilates', 5),
('Nogomet', 5),
('Košarka', 5),
('Nič od naštetega', 5),
-- Ali imaš zakupljen abonma (npr. pri Drami, Mladinskem gledališču …)
('Da', 6),
('Ne', 6),
-- Kje bi bil tvoj sanjski prvi date?
('NUK', 7),
('Biljard', 7),
('Piknik v parku', 7),
('Atlantis', 7),
('Večerja v Asu', 7),
-- Katera beseda najbolje opiše tvoje študentsko življenje trenutno?
('Kaotično', 8),
('Organizirano', 8),
('Brezskrbno', 8),
('Nekje med A in B', 8),
('Na drugem planetu', 8),
-- Kakšna je tvoja barva las?
('Rjava', 9),
('Črna', 9),
('Blond', 9),
('Oranžna', 9),
('Drugo', 9),
-- Kako resno razmerje iščeš?
('One night stand', 10),
('Iščem bodočo Ženo/Moža', 10),
('Poletna romanca', 10),
('Friends with benefits', 10),
--Koliko let imaš?
('18', 11),
('19', 11),
('20', 11),
('21', 11),
('22', 11),
('23', 11),
('24', 11),
('25', 11),
('26', 11),
('27', 11),
('28', 11),
('29', 11),
('30', 11),
--Katero fakulteto obiskuješ?
('AG', 12),
('AGRFT', 12),
('ALUO', 12),
('BF', 12),
('EF', 12),
('FA', 12),
('FDV', 12),
('FE', 12),
('FFA', 12),
('FGG', 12),
('FKKT', 12),
('FMF', 12),
('FPP', 12),
('FRI', 12),
('FSD', 12),
('FS', 12),
('FSP', 12),
('FU', 12),
('FF', 12),
('MF', 12),
('NTF', 12),
('PEF', 12),
('PF', 12),
('TEOF', 12),
('VF', 12),
('ZF', 12);