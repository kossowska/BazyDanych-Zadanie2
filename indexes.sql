USE Kossowska_Paulina_329526_projekt2;

-- Indeks na tabeli Konta
CREATE INDEX index_nr_rachunku ON Konta (NumerRachunku);

-- Indeksy na tabeli U¿ytkownicy
CREATE INDEX index_pesel ON U¿ytkownicy (Pesel);
CREATE INDEX index_nr_dok_toz ON U¿ytkownicy (NumerDokTo¿);

-- Indeks dla tabeli Historia_logowania
CREATE INDEX index_status_logowania ON Historia_logowania (StatusLogowania);

-- Indeksy dla tabeli Transakcje
CREATE INDEX index_typ_transakcji ON Transakcje (TypTransakcji);
CREATE INDEX index_data_czas_transakcji ON Transakcje (DataCzasTransakcji);

-- Indeks dla tabeli Typ_Dokumentu_to¿samoœci
CREATE INDEX index_dok_nazwa ON Typ_Dokumentu_to¿samoœci (Nazwa);

-- Indeksy dla tabeli Waluty
CREATE INDEX index_waluta_nazwa ON Waluty (Nazwa);
CREATE INDEX index_waluta_symbol ON Waluty (Symbol);

-- Indeks dla tabeli Typ_Konta
CREATE INDEX index_konto_nazwa ON Typ_Konta (Nazwa);

-- Indeks dla tabeli Typ_transakcji
CREATE INDEX index_transakcja_nazwa ON Typ_transakcji (Nazwa);

-- Indeks dla tabeli Status_logowania
CREATE INDEX index_status_logowania_nazwa ON Status_logowania (Nazwa);
