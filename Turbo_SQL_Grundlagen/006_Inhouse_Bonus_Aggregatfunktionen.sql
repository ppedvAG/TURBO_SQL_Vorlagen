---- AGGREGATFUNKTIONEN
-- aggregate functions

USE Northwind;

SELECT UnitPrice
FROM Products
ORDER BY UnitPrice

-- z�hle, wie viele es insgesamt gibt (77)
SELECT COUNT(ProductID)
FROM Products


-- Durchschnittlicher Unitprice (28.8663)
SELECT AVG(UnitPrice)
FROM Products

-- niedrigster Preis
SELECT MIN(UnitPrice)
FROM Products

-- h�chster Preis
SELECT MAX(UnitPrice)
FROM Products


-- SUMME Frachtkosten PRO Kunde

SELECT SUM(Freight) AS Freightsum, CustomerID, ShipCountry
FROM Orders
GROUP BY CustomerID, ShipCountry

-- nur 89 Ergebnisse, weil 2 Kunden haben noch nichts bestellt und somit keine Frachtkosten


-- wieviele Kunden gibts PRO Stadt im jeweiligen Land?
-- Country, City, Anzahl Kunden

SELECT *
FROM Customers


SELECT Country, City, COUNT(CustomerID) AS Customers
FROM Customers
GROUP BY Country, City -- PRO ... was? Kunden pro Stadt im jeweiligen Land
ORDER BY Country, City


SELECT OrderID, ProductID, Quantity, UnitPrice*Quantity AS Price
FROM [Order Details]
-- WHERE OrderID = 10248