-- ****************************** HÄUFIG VERWENDETE SERVERFUNKTIONEN ***************************

-- ******************************** STRINGFUNKTIONEN *******************************************


-- ************************ AUSSCHNEIDEN: LEFT, RIGHT, SUBSTRING *******************************
-- Zeichen "ausschneiden":

-- schneidet die ersten vier Zeichen aus (Test)
SELECT LEFT('Testtext', 4)

--schneidet die letzten vier Zeichen aus (text)
SELECT RIGHT('Testtext', 4)

-- Textausschnitt erstellen mit Substring
SELECT SUBSTRING('Testtext', 4, 2) -- ab welcher Stelle (4) m?chte man wieviele Zeichen (2) ausschneiden
-- Ergebnis: tt




-- ***************************************** CONCAT  *******************************************
-- Strings zusammenfügen mit CONCAT()

SELECT CONCAT('abc', 'def', 'ghi', 'jkl', 'mno', 'pqr', 'stu', 'vwx', 'yz')

SELECT CONCAT('Ich weiß, ', 'dass ich', ' nichts weiß.') AS Zitat

SELECT CONCAT('James', ' ', 'Bond') AS FullName


--SELECT CONCAT(FirstName, ' ', LastName) AS FullName
--FROM Tabelle

USE Northwind

SELECT CONCAT(FirstName, ' ', LastName) AS EmpName
FROM Employees



-- ********************************** DATUMSFUNKTIONEN *****************************************

/*

Intervalle:


    year, yyyy, yy = Year
    quarter, qq, q = Quarter
    month, MM, M = month
    week, ww, wk = Week
    day, dd, d = Day
    hour, hh = hour
    minute, mi, n = Minute
    second, ss, s = Second
    millisecond, ms = Millisecond
	nanosecond, ns
    weekday, dw, w = Weekday
    dayofyear, dy, y = Day of the year

*/



-- ********************************* DATUM ABFRAGEN ********************************************

-- auf 3-4 Millisekunden genau; Datentyp datetime, 8 byte
SELECT GETDATE() 
-- auf Nanosekunden genau; Datentyp datetime2, 6-8 byte
SELECT SYSDATETIME()



-- ******************************** DATUMSBERECHNUNGEN: DATEADD ********************************

SELECT DATEADD(hh, 10, '2019-11-04') -- wenn nicht genauer angegeben, wird von 0:00 Uhr ausgegangen
									 -- '04.11.2019' , '4.11.2019' Vorsicht mit Format!

-- aktuelles Datum inklusive Uhrzeit (inklusive Millisekunden) mit DATEADD kombinieren
SELECT DATEADD(hh, 10, GETDATE()) 

SELECT DATEADD(dd, 38, GETDATE())


-- negative Vorzeichen sind erlaubt, wir können so auch ein bestimmtes Intervall von einem Datum abziehen
SELECT DATEADD(dd, -38, GETDATE())


-- ***************************** DATUMSBERECHNUNGEN: DATEDIFF **********************************
-- Differenz zwischen zwei Daten
SELECT DATEDIFF(dd, '2019-11-04', '2019-12-24')
SELECT DATEDIFF(dd, '2019-12-24', '2019-11-04') -- mit negativem Vorzeichen, gleicher Wert

-- auch hier können wir eine Differen zum aktuellen Datum abfragen
SELECT DATEDIFF(dd, GETDATE(), '2019-12-24')



-- *************************** DATUMSTEILE AUSGEBEN: DATEPART **********************************
SELECT DATEPART(dd, '2019-11-04')
SELECT DATEPART(mm, '2019-11-04')

-- ********************************* DAY, MONTH, YEAR ******************************************
-- gleiches Ergebnis wie mit DATEPART dd, MM, yy
-- 4 byte Speicherplatz
-- Tag/Monat/Jahr als INTEGERWERT
SELECT DAY('2019-11-04')
SELECT MONTH('2019-11-04')
SELECT YEAR('2019-11-04')



-- Beispiel mit DB:
USE Northwind

SELECT YEAR(HireDate) AS Einstellungsjahr
FROM Employees

SELECT HireDate
FROM Employees



