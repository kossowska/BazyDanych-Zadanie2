-- Transakcja kod
USE Kossowska_Paulina_329526_projekt2;

BEGIN TRANSACTION;

-- Dodanie nowego logowania do historii
INSERT INTO Historia_logowania (ID, ID_u�ytkownika, DataCzasLogowania, DataCzasWylogowania, AdresIP, StatusLogowania) 
VALUES (17, 1, '2024-01-12T22:42:25Z', '2024-01-12T22:47:30Z', '192.168.0.1', 1);

-- Dodanie szczeg��w transakcji
INSERT INTO Transakcje (TransakcjaID, LogowanieID, TypTransakcji, KwotaTransakcji, Waluta, DataCzasTransakcji, Rachunek�r�d�owy, RachunekDocelowy, OpisTransakcji) 
VALUES (11, 17, 5, -144.20, 6, '2024-01-12T22:43:45Z', 1, NULL, 'P�atno�� w sklepie Lidl');

-- Zaktualizowanie salda konta
UPDATE Konta
SET SaldoKonta = SaldoKonta - 144.20
WHERE ID_u�ytkownika = 1;

COMMIT TRANSACTION;