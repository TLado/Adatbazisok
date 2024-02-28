SELECT szh.TIPUS, 
        YEAR(f.METTOL) AS 'Év', 
        MONTH(f.METTOL) AS 'Hónap', 
        COUNT(f.FOGLALAS_PK) AS 'FoglalasSzam'
FROM Foglalas f JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID 
                JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID
WHERE DAY(f.MEDDIG) - DAY(f.METTOL) >=5 
GROUP BY szh.TIPUS, YEAR(f.METTOL), MONTH(f.METTOL)