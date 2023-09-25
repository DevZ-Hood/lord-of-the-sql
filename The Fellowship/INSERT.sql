INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);


SELECT * FROM PracingPony_room5
INSERT INTO Test (test) VALUES ("pipoca");
.help;
.tables;


------------------------------------------------------------
--- `Wind Hill (Heal Frodo) -----------
------------------------------------------------------------

SELECT * FROM Bilbos_Departure

------------------------------------------------------------
--- `PrancingPony -----------

-- Insert Hobbits into PracingPony_room5 



------------------------------------------------------------

-- CREATE TABLE PracingPony_room5 (Bed int, character varchar(30))
INSERT INTO PracingPony_room5 (Bed, character) VALUES (1, NULL);
INSERT INTO PracingPony_room5 (Bed, character) VALUES (2, NULL);
INSERT INTO PracingPony_room5 (Bed, character) VALUES (3, NULL);
INSERT INTO PracingPony_room5 (Bed, character) VALUES (4, NULL);

-- SELECT * FROM PracingPony_room5
-- DELETE FROM PracingPony_room5
--- Default
INSERT INTO PracingPony_room5 (Bed, character)
SELECT character, Bed FROM PracingPony_room3 WHERE Bed = 4

UPDATE PracingPony_room3....

--- Option 2

UPDATE PracingPony_room5
SET character = (
    SELECT character FROM PracingPony_room3
    WHERE PracingPony_room5.Bed = PracingPony_room3.Bed
)

--- Hard One
UPDATE room5 
SET 
room5.character = room3.character
FROM PracingPony_room5 AS room5
JOIN 
PracingPony_room3 AS room3
ON room5.Bed = room3.Bed


------------------------------------------------------------
--- `Wind Hill (Heal Frodo) -----------
------------------------------------------------------------

-- CREATE TABLE NaturalItems (name VARCHAR(50), type VARCHAR(50), location VARCHAR(50), ElficReference VARCHAR(100))
-- SELECT * FROM NaturalItems
-- DROP TABLE NaturalItems

-- INSERT INTO NaturalItems (name, type, location, ElficReference) VALUES ('Lagrima de Bode', 'medicine', 'Tirharad', 'cmuybc');
-- INSERT INTO NaturalItems (name, type, location, ElficReference) VALUES ('Figado de lambari', 'Food', 'Trevamata', 'mkund');
-- INSERT INTO NaturalItems (name, type, location, ElficReference) VALUES ('Casco de unicornio', 'merchandise', 'Utumno', 'dpikm');
-- INSERT INTO NaturalItems (name, type, location, ElficReference) VALUES ('Erva do Rei', 'medicine', 'Tirharad', 'mucud');
-- INSERT INTO NaturalItems (name, type, location, ElficReference) VALUES ('Restos de baleia', 'clothing', 'Ithilien', 'mucud');



-- CREATE TABLE NaturalMedicinesProperties (ElficReference VARCHAR(255), Effect VARCHAR(255), Duration_Hrs Float)
-- SELECT * FROM NaturalMedicinesProperties
-- INSERT INTO NaturalMedicinesProperties (ElficReference, Effect, Duration_Hrs) VALUES ('yehdnjo', 'Cura para ferimentos profundos', 2.0);
-- INSERT INTO NaturalMedicinesProperties (ElficReference, Effect, Duration_Hrs) VALUES ('mucud', 'Cura para ferimentos Leves', 1.3);

SELECT items.name as Name, properties.Effect as effect, properties.Duration_Hrs
FROM NaturalItems items INNER JOIN NaturalMedicinesProperties properties
 ON items.ElficReference = properties.ElficReference
WHERE items.name = 'Erva do Rei'

CREATE TEMPORARY TABLE X AS SELECT name, type FROM NaturalItems;
SELECT * FROM X;

------------------------------------------------------------
--- The Fellowship -----------
------------------------------------------------------------


CREATE TABLE TheFellowship (Member1 varchar(30), Member2 varchar(30), Member3 varchar(30), Member4 varchar(30), Member5 varchar(30))
ALTER TABLE TheFellowship ADD Destiny varchar(30) ' ',  Mission varchar(30) ' '

------------------------------------------------------------
--- Traverse Stopped By Saruman -----------
------------------------------------------------------------

--CREATE TABLE Paths (name varchar(30), RevisionDate Date, Status string, isBlock int)
SELECT * FROM Paths
-- DELETE FROM Paths
-- INSERT INTO Paths (name, RevisionDate, Status, isBlock) VALUES ('Mountains', NULL, 'Safe', NULL)
-- INSERT INTO Paths (name, RevisionDate, Status, isBlock) VALUES ('Moria', Date('2017-09-03'), 'Safe', NULL)
-- INSERT INTO Paths (name, RevisionDate, Status, isBlock) VALUES ('Forgot the  Name', NULL, 'Dangerous', NULL)





 ------------------------------------------------------------
--- Durin -----------
------------------------------------------------------------

---CREATE TABLE DurinsDoor (Status INT, Password VARCHAR(128) NULL)
drop table DurinsDoor
SELECT * FROM DurinsDoor
INSERT INTO DurinsDoor (STATUS, Password) VALUES ('CLOSED', 'jibcdiuvd-jcjdbuvcyud-njbdu-xdcd')
LIKE '%jibcdiuvd'



------------------------------------------------------------
--- Traverse Stopped By Saruman -----------
------------------------------------------------------------

