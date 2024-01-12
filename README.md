Zadanie programistyczne 2 na laboratorium Bazy Danych.

## Baza Danych

Zgodnie z treścią zadania programistycznego przygotowałam projekt bazy danych Systemu Finansowego. Baza składa się z 4 tabel głównych (Użytkownicy, Konta, Transakcje, Historia_logowania) oraz z 5 tabel pomocniczych (Typ_Dokumentu_tożsamości, Typ_Konta, Waluty, Typ_transakcji, Status_logowania).

### Tabele

1. Użytkownicy - zawiera podstawowe dane identyfikacyjne osób korzystających z systemu finansowego.
2. Konta - przechowuje listę kont bankowych użytkowników.
3. Transakcje - służy do śledzenia wykonywanych operacji finansowych i ich szczegółów.
4. Historia_logowania - zawiera informacje dotyczące szczegółów logowań poszczególnych użytkowników na swoich kontach bankowych lub do bankomatów, np. w celu wykonania pewnej transakcji finansowej (wpłaty/wypłaty gotówki).
5. Typ_Dokumentu_tożsamości - zawiera możliwe typy dokumentu tożsamości.
6. Typ_Konta - zawiera możliwe typy kont.
7. Waluty - zawiera nazwy i symbole walut.
8. Typ_transakcji - zawiera rodzaje wykonywanych transakcji.
9. Status_logowania - zawiera statusy logowania do systemu finansowego.

#### Tabela Typ_Dokumentu_tożsamości
```sql
CREATE TABLE Typ_Dokumentu_tożsamości (
	DokumentID int NOT NULL,
	Nazwa nvarchar(30) NOT NULL,
	PRIMARY KEY (DokumentID)
);
```
CREATE TABLE Użytkownicy (
	UżytkownikID int NOT NULL,
	Imię nvarchar(70) NOT NULL,
	DrugieImię nvarchar(70),
	Nazwisko nvarchar(100) NOT NULL,
	Pesel char(11),
	DokumentTożsamości int NOT NULL,
	NumerDokToż varchar(9) NOT NULL,
	Email nvarchar(255),
	NrTelefonu varchar(20),
	Adres nvarchar(max),
	PRIMARY KEY (UżytkownikID), 
	FOREIGN KEY (DokumentTożsamości) REFERENCES Typ_Dokumentu_tożsamości(DokumentID)
);

CREATE TABLE Typ_Konta (
	TypKontaID int NOT NULL,
	Nazwa nvarchar(30) NOT NULL,
	PRIMARY KEY (TypKontaID)
);

CREATE TABLE Waluty (
	WalutaID int NOT NULL,
	Nazwa nvarchar(30) NOT NULL,
	Symbol varchar(3) NOT NULL,
	PRIMARY KEY (WalutaID)
);

CREATE TABLE Konta (
	KontoID int NOT NULL,
	ID_użytkownika int NOT NULL,
	TypKonta int NOT NULL,
	SaldoKonta money NOT NULL,
	Waluta int NOT NULL,
	NumerRachunku varchar(40) NOT NULL,
	OstatniaAktualizacjaSalda datetimeoffset NOT NULL,
	PRIMARY KEY (KontoID),
    FOREIGN KEY (ID_użytkownika) REFERENCES Użytkownicy(UżytkownikID),
	FOREIGN KEY (TypKonta) REFERENCES Typ_Konta(TypKontaID),
	FOREIGN KEY (Waluta) REFERENCES Waluty(WalutaID)
);

CREATE TABLE Typ_transakcji (
	TypTransakcjiID int NOT NULL,
	Nazwa nvarchar(30) NOT NULL,
	PRIMARY KEY (TypTransakcjiID)
);

CREATE TABLE Status_logowania (
	StatusID int NOT NULL,
	Nazwa nvarchar(70),
	PRIMARY KEY (StatusID)
);

CREATE TABLE Historia_logowania (
	ID int NOT NULL,
	ID_użytkownika int NOT NULL,
	DataCzasLogowania datetimeoffset NOT NULL,
	DataCzasWylogowania datetimeoffset NOT NULL,
	AdresIP varchar(255) NOT NULL,
	StatusLogowania int NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_użytkownika) REFERENCES Użytkownicy(UżytkownikID),
	FOREIGN KEY (StatusLogowania) REFERENCES Status_logowania(StatusID)
);

CREATE TABLE Transakcje (
	TransakcjaID int NOT NULL,
	LogowanieID int,
	TypTransakcji int NOT NULL,
	KwotaTransakcji money NOT NULL,
	Waluta int NOT NULL,
	DataCzasTransakcji datetimeoffset NOT NULL,
	RachunekŹródłowy int NOT NULL,
	RachunekDocelowy int,
	OpisTransakcji text,
	PRIMARY KEY (TransakcjaID),
    FOREIGN KEY (TypTransakcji) REFERENCES Typ_transakcji(TypTransakcjiID),
	FOREIGN KEY (Waluta) REFERENCES Waluty(WalutaID),
	FOREIGN KEY (RachunekŹródłowy) REFERENCES Konta(KontoID),
	FOREIGN KEY (RachunekDocelowy) REFERENCES Konta(KontoID),
	FOREIGN KEY (LogowanieID) REFERENCES Historia_logowania(ID)
);

## Opis skryptów

### create_database.sql

Tworzy bazę danych o opisanej strukturze.

###  fake_data.sql

Wstawia dane do wszystkich tabel bazy danych.

## transaction.sql

Zawiera kwerendy: dodanie nowego logowania do historii logowań, dodanie szczegółów wykonanej transakcji oraz zaktualizowanie salda konta po wykonaniu transakcji.

## indexes.sql

Tworzy niezbędne indeksy w bazie danych.

## procedure.sql

Zawiera procedurę, która zwraca listę bankomatów z konkretną, dzienną sumą wpłat i wypłat gotówki.
