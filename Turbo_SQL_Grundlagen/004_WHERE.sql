-- WHERE clause, WHERE-Klausel, WHERE-Bedingung
-- wenn man nur bestimmte Ergebnisse ausgeben möchte
USE Northwind;

/*
Syntax:

SELECT Spalten,...
FROM Tabelle
WHERE Bedingung
ORDER BY Spalte ASC|DESC

*/



/*

WHERE Operatoren =, <, >, <=, >=
				!=, <>  -- darf NICHT diesem Wert entsprechen
				LIKE, IN, BETWEEN


		-- nicht so gut für Performance:
				NOT IN
				NOT LIKE
				NOT BETWEEN

		AND, OR

*/


-- alle, die in Deutschland wohnen
SELECT *
FROM Customers
WHERE Country = 'Germany'


-- alle, die in Deutschland in Berlin wohnen
SELECT *
FROM Customers
WHERE Country = 'Germany'
	AND City = 'Berlin'


-- Frachtkosten unter 76
SELECT Freight
FROM Orders
WHERE Freight < 76

-- Frachtkosten, die NICHT einem bestimmten Wert entsprechen
SELECT Freight
FROM Orders
WHERE Freight != 148.33  -- alle, die NICHT diesen Wert haben

-- Ausgabe ordnen ASC (aufsteigend), DESC (absteigend)
SELECT Freight
FROM Orders
WHERE Freight > 76
ORDER BY Freight DESC -- (vom größten zum kleinsten Wert)


-- ************************ BETWEEN, IN ********************************
SELECT Freight
FROM Orders
WHERE Freight >= 100 AND Freight <= 200

-- ODER SO:
SELECT Freight
FROM Orders
WHERE Freight BETWEEN 100 AND 200  -- wie oben, 100 und 200 inklusive

-- alle Bestellungen, die vom Employee 3, 4 und 7 bearbeitet worden sind
SELECT *
FROM Orders
WHERE EmployeeID = 3
		OR EmployeeID = 4
		OR EmployeeID = 7

-- ODER SO:
SELECT *
FROM Orders
WHERE EmployeeID IN(3, 4, 7)


