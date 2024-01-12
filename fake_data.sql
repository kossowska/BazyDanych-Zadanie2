INSERT INTO Typ_Dokumentu_toøsamoúci (DokumentID, Nazwa) VALUES
	(1, 'DowÛd osobisty'),
	(2, 'Paszport'),
	(3, 'Karta pobytu'),
	(4, 'MDowÛd'),
	(5, 'Inny');

INSERT INTO Uøytkownicy (UøytkownikID, ImiÍ, DrugieImiÍ, Nazwisko, Pesel, DokumentToøsamoúci, NumerDokToø, Email, NrTelefonu, Adres) VALUES
	(1, 'Mateusz', 'Kamil', 'Nowakowski', '09111243210', '1', 'AHC564877', 'mateusz.nowakowski@example.com', '098-765-432', '{"ulica": "S≥oneczna", "numer": "13", "kod_pocztowy": "23-001", "miasto": "Warszawa", "kraj": "Polska"}'),
	(2, 'Karolina', NULL, 'Kwiatkowska', '10092354321', '1', 'IHD665342', 'karolina.kwiatkowska@example.com', '109-876-543', '{"ulica": NULL, "numer": "12A", "kod_pocztowy": "12-701", "miasto": "Po≥anie", "kraj": "Polska"}'),
	(3, 'Pawe≥', 'Miko≥aj', 'StÍpieÒ', '43010987654', '2', 'HC7869235', NULL, '432-109-876', '{"ulica": "Polna", "numer": "41/12", "kod_pocztowy": "09-400", "miasto": "GdaÒsk", "kraj": "Polska"}'),
	(4, 'Natalia', NULL, 'Nowicka', '98060432109', '1', 'GFH489321', 'natalia.nowicka@example.com', NULL, '{"ulica": "Zielona", "numer": "4", "kod_pocztowy": "12-980", "miasto": "Warszawa", "kraj": "Polska"}'),
	(5, 'Igor', 'Maksymilian', 'Olejnik', '45071901234', '1', 'OIU897345', 'igor.olejnik@example.com', NULL, '{"ulica": "Zielona", "numer": "19", "kod_pocztowy": "12-980", "miasto": "Warszawa", "kraj": "Polska"}'),
	(6, 'Kamila', NULL, 'SzczepaÒska', '56040412345', '1', 'ORG345687', NULL, '+48 56 789 01 23', '{"ulica": "Gerberowa", "numer": "9/26", "kod_pocztowy": "14-733", "miasto": "KrakÛw", "kraj": "Polska"}'),
	(7, 'Tymon', 'Dorian', 'Zalewski', '89012345678', '4', 'ADCT45376', 'tymon.zalewski@example.com', '890-123-456', '{"ulica": "Genera≥a Kasprzyka", "numer": "6A", "kod_pocztowy": "45-061", "miasto": "Warszawa", "kraj": "Polska"}'),
	(8, 'John', 'Doe', 'Smith', NULL, '3', 'ZR0980973', 'john.doe@example.com', '+1 555 123 456', '{"ulica": "Main Street", "numer": "7/432", "kod_pocztowy": "13790", "miasto": "New York", "kraj": "Stany Zjednoczone/USA"}'),
	(9, 'Alicja', NULL, 'Kowalska', '82121478901', '1', 'KNM784983', NULL, '123-456-789', '{"ulica": "Nowa", "numer": "12", "kod_pocztowy": "90-006", "miasto": "£Ûdü", "kraj": "Polska"}'),
	(10, 'Jacob', NULL, 'Karlsson', NULL, '2', 'KJ3980231', 'jacob.karlsson@example.com', NULL, '{"ulica": "Svenssongrand", "numer": "34", "kod_pocztowy": "105 35", "miasto": "Stockholm", "kraj": "Szwecja"}');

INSERT INTO Typ_Konta (TypKontaID, Nazwa) VALUES
	(1, 'Konto oszczÍdnoúciowe'),
	(2, 'Konto walutowe'),
	(3, 'Konto firmowe'),
	(4, 'Konto osobiste'),
	(5, 'Konto studenckie'),
	(6, 'Konto dla dziecka'),
	(7, 'Konto m≥odzieøowe');

INSERT INTO Waluty (WalutaID, Nazwa, Symbol) VALUES
	(1, 'Dolar amerykaÒski', 'USD'),
	(2, 'Euro', 'EUR'),
	(3, 'Funt brytyjski', 'GBP'),
	(4, 'Korona szwedzka', 'SEK'),
	(5, 'Korona czeska', 'CZK'),
	(6, 'Polski z≥oty', 'PLN');

INSERT INTO Konta (KontoID, ID_uøytkownika, TypKonta, SaldoKonta, Waluta, NumerRachunku, OstatniaAktualizacjaSalda) VALUES
	(1, 1, 7, 1505.89, 6, 'PL10 1050 0099 7603 1234 5678 9123', '2023-11-30T00:00:00Z'),
	(2, 2, 7, 2500.99, 6, 'PL30 1050 0099 7603 2345 6789 1234', '2023-11-30T00:00:00Z'),
	(3, 3, 2, 900.00, 1, 'PL95 1050 0099 7603 4567 8912 3456', '2023-11-30T00:00:00Z'),
	(4, 3, 3, 57300.45, 6, 'PL25 7441 6761 0405', '2023-11-30T00:00:00Z'),
	(5, 4, 5, 5000.00, 6, 'PL20 1050 0099 7603 6789 1234 5678', '2023-11-30T00:00:00Z'),
    (6, 5, 1, 30000.00, 6, 'PL36 8041 7295 4128', '2023-11-30T00:00:00Z'),
    (7, 6, 1, 15000.00, 6, 'PL45 8862 7982 4197 3887 3832 2557', '2023-11-30T00:00:00Z'),
    (8, 6, 2, 3160.50, 2, 'PL05 3137 0411 3715 5014 8076 5174 5333', '2023-11-30T00:00:00Z'),
    (9, 6, 3, 120500.00, 6, 'PL17 3623 5281 0855 9362 4663 5470', '2023-11-30T00:00:00Z'),
    (10, 7, 4, 4500.00, 6, 'PL98 2517 4029 2028', '2023-11-30T00:00:00Z'),
    (11, 8, 3, 12000.25, 1, '000000518 030851205', '2023-11-30T00:00:00Z'),
    (12, 9, 4, 30500.46, 6, 'PL45 2718 3007 7407 8181 5187 8441', '2023-11-30T00:00:00Z'),
    (13, 10, 1, 9500.80, 4, 'SE59 0163 3586 0543 4377 6514', '2023-11-30T00:00:00Z'),
	(14, 8, 2, 4400.80, 2, '000230518 030843205', '2023-11-30T00:00:00Z');

INSERT INTO Typ_transakcji (TypTransakcjiID, Nazwa) VALUES
    (1, 'Przelew krajowy'), 
	(2, 'Przelew zagraniczny'),
    (3, 'Wp≥ata gotÛwki'),
    (4, 'Wyp≥ata gotÛwki'),
    (5, 'P≥atnoúÊ kartπ'),  
    (6, 'Op≥ata bankowa');

INSERT INTO Status_logowania (StatusID, Nazwa) VALUES
	(1, 'Prawid≥owe logowanie'),
	(2, 'B≥Ídne has≥o lub login'),
	(3, 'Przekroczono limit czasu logowania'),
	(4, 'B≥πd serwera'),
	(5, 'Nieznany status');

INSERT INTO Historia_logowania (ID, ID_uøytkownika, DataCzasLogowania, DataCzasWylogowania, AdresIP, StatusLogowania) VALUES
    (1, 1, '2023-11-28T12:35:00Z', '2023-11-28T12:40:34Z', '192.168.0.1', 1),
	(2, 2, '2023-11-28T12:35:05Z', '2023-11-28T12:35:05Z', '134.152.0.6', 4),
	(3, 2, '2023-11-28T12:35:55Z', '2023-11-28T12:35:55Z', '134.152.0.6', 4),
	(4, 2, '2023-11-28T12:36:13Z', '2023-11-28T12:49:27Z', '134.152.0.6', 1),
	(5, 6, '2023-11-28T16:48:19Z', '2023-11-28T16:48:19Z', '109.324.6.4', 2),
	(6, 6, '2023-11-28T16:48:49Z', '2023-11-28T16:48:49Z', '109.324.6.4', 2),
	(7, 6, '2023-11-28T16:49:04Z', '2023-11-28T16:59:34Z', '109.324.6.4', 1),
	(8, 9, '2023-11-29T09:36:37Z', '2023-11-29T09:40:37Z', 'BANKOMAT NR 47 W £ODZI', 1),
	(9, 1, '2023-11-29T10:32:31Z', '2023-11-29T10:32:31Z', 'BANKOMAT NR 123 W WARSZAWIE', 4),
	(10, 1, '2023-11-29T10:38:38Z', '2023-11-29T10:38:38Z', 'BANKOMAT NR 123 W WARSZAWIE', 4),
	(11, 1, '2023-11-29T10:45:31Z', '2023-11-29T10:45:31Z', 'BANKOMAT NR 123 W WARSZAWIE', 4),
	(12, 1, '2023-11-29T10:48:51Z', '2023-11-29T10:53:54Z', 'BANKOMAT NR 123 W WARSZAWIE', 1),
	(13, 4, '2023-11-29T09:49:37Z', '2023-11-29T09:49:37Z', 'BANKOMAT NR 123 W WARSZAWIE', 4),
	(14, 4, '2023-11-29T09:49:59Z', '2023-11-29T09:49:59Z', 'BANKOMAT NR 123 W WARSZAWIE', 4),
	(15, 4, '2023-11-29T09:51:47Z', '2023-11-29T09:56:47Z', 'BANKOMAT NR 123 W WARSZAWIE', 1),
	(16, 7, '2023-11-27T19:38:25Z', '2023-11-27T19:43:47Z', 'BANKOMAT NR 73 W GDA—SKU', 1);


INSERT INTO Transakcje (TransakcjaID, LogowanieID, TypTransakcji, KwotaTransakcji, Waluta, DataCzasTransakcji, RachunekèrÛd≥owy, RachunekDocelowy, OpisTransakcji) VALUES
    (1, 1, 5, -54.20, 6, '2023-11-28T12:39:45Z', 1, NULL, 'P≥atnoúÊ w sklepie stacjonarnym Empik'),
	(2, 4, 1, -135.99, 6, '2023-11-28T12:41:03Z', 2, 4, 'ZamÛwienie 230954 w sklepie Chocolissimo.pl'),
	(3, 4, 1, 135.99, 6, '2023-11-28T12:41:05Z', 4, NULL, 'ZamÛwienie 230954 w sklepie Chocolissimo.pl'),
	(4, NULL, 6, -5.00, 6, '2023-11-28T12:40:43Z', 5, NULL, 'Op≥ata bankowa za brak wymaganej liczby p≥atnoúci kartπ'),
	(5, 7, 2, -650.00, 2, '2023-11-28T16:53:17Z', 8, 14, 'Przelew úrodkÛw dla Johna'),
	(6, 7, 2, 650.00, 2, '2023-11-28T17:02:20Z', 14, NULL, 'Przelew úrodkÛw dla Johna'),
	(7, 8, 4, -3200.00, 6, '2023-11-29T09:38:35Z', 12, NULL, 'Wyp≥ata úrodkÛw'),
	(8, 12, 4, -5800.00, 6, '2023-11-29T10:48:51Z', 1, NULL, 'Wyp≥ata úrodkÛw'),
	(9, 15, 3, 2250.00, 6, '2023-11-29T09:52:35Z', 5, NULL, 'Wp≥ata úrodkÛw'),
	(10, 16, 3, 9700.00, 6, '2023-11-27T19:40:35Z', 10, NULL, 'Wp≥ata úrodkÛw');
