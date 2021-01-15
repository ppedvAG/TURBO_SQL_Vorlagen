-- ***************************** SELECT STATEMENTS ***************************************
-- immer �berpr�fen, welche Datenbank verwendet wird!

USE Northwind


-- Datenbankdiagramm f�r �bersicht �ber Tabellen
-- Object Explorer -> Databases -> DB Name -> Database Diagrams



-- Wildcard * (alles ausw�hlen)
-- * sollte in der Realit�t NICHT verwendet werden. Auch, wenn die gesamte Tabelle ausgegeben werden soll, sollten stattdessen die Spaltennamen angegeben werden.


-- w�hlt alle Spalten aus (f�r �bungen oder um schnell etwas zu testen - ansonsten Spalten angeben!)
SELECT *
FROM Customers


-- w�hlt die Spalte "CompanyName" aus der Customers Tabelle aus
SELECT CompanyName
FROM Customers


-- w�hlt mehrere Spalten aus:
SELECT	  CompanyName
		, ContactName
		, Phone
FROM Customers



-- ************************************** ALIAS vergeben **************************************
SELECT	  CompanyName AS Firmenname
		, ContactName AS Kontaktperson
		, Phone AS Telefonnummer
FROM Customers

-- AS darf weggelassen werden, empfiehlt sich aber zwecks besserer Lesbarkeit



-- **************************** SIMPLE SELECT *************************************************

SELECT 100

SELECT 'Testtext'

SELECT 100*3


-- FORMAT?
SELECT 100, 
		'Testtext', 
		'mehr Text', -- in der letzten Zeile darf kein Komma stehen; Problem, wenn auskommentiert wird:
		--'Info'


-- Fehlermeldung, wegen Kommas oben:
SELECT    100
		, 'Testtext'
		, 'mehr Text'
		--, 'Info'
-- bisschen sch�ner so, dann kann alles auskommentiert werden und funktioniert trotzdem.


