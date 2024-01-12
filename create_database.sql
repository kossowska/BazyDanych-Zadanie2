CREATE DATABASE Kossowska_Paulina_329526_projekt2;

USE Kossowska_Paulina_329526_projekt2;

CREATE TABLE Typ_Dokumentu_to�samo�ci (
	DokumentID int NOT NULL,
	Nazwa nvarchar(30) NOT NULL,
	PRIMARY KEY (DokumentID)
);

CREATE TABLE U�ytkownicy (
	U�ytkownikID int NOT NULL,
	Imi� nvarchar(70) NOT NULL,
	DrugieImi� nvarchar(70),
	Nazwisko nvarchar(100) NOT NULL,
	Pesel char(11),
	DokumentTo�samo�ci int NOT NULL,
	NumerDokTo� varchar(9) NOT NULL,
	Email nvarchar(255),
	NrTelefonu varchar(20),
	Adres nvarchar(max),
	PRIMARY KEY (U�ytkownikID), 
	FOREIGN KEY (DokumentTo�samo�ci) REFERENCES Typ_Dokumentu_to�samo�ci(DokumentID)
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
	ID_u�ytkownika int NOT NULL,
	TypKonta int NOT NULL,
	SaldoKonta money NOT NULL,
	Waluta int NOT NULL,
	NumerRachunku varchar(40) NOT NULL,
	OstatniaAktualizacjaSalda datetimeoffset NOT NULL,
	PRIMARY KEY (KontoID),
    FOREIGN KEY (ID_u�ytkownika) REFERENCES U�ytkownicy(U�ytkownikID),
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
	ID_u�ytkownika int NOT NULL,
	DataCzasLogowania datetimeoffset NOT NULL,
	DataCzasWylogowania datetimeoffset NOT NULL,
	AdresIP varchar(255) NOT NULL,
	StatusLogowania int NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_u�ytkownika) REFERENCES U�ytkownicy(U�ytkownikID),
	FOREIGN KEY (StatusLogowania) REFERENCES Status_logowania(StatusID)
);

CREATE TABLE Transakcje (
	TransakcjaID int NOT NULL,
	LogowanieID int,
	TypTransakcji int NOT NULL,
	KwotaTransakcji money NOT NULL,
	Waluta int NOT NULL,
	DataCzasTransakcji datetimeoffset NOT NULL,
	Rachunek�r�d�owy int NOT NULL,
	RachunekDocelowy int,
	OpisTransakcji text,
	PRIMARY KEY (TransakcjaID),
    FOREIGN KEY (TypTransakcji) REFERENCES Typ_transakcji(TypTransakcjiID),
	FOREIGN KEY (Waluta) REFERENCES Waluty(WalutaID),
	FOREIGN KEY (Rachunek�r�d�owy) REFERENCES Konta(KontoID),
	FOREIGN KEY (RachunekDocelowy) REFERENCES Konta(KontoID),
	FOREIGN KEY (LogowanieID) REFERENCES Historia_logowania(ID)
);