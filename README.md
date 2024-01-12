Zadanie programistyczne 2 na laboratorium Bazy Danych.

## Baza Danych

Zgodnie z treścią zadania programistycznego przygotowałam projekt bazy danych Systemu Finansowego. Baza składa się z 4 tabel głównych (Użytkownicy, Konta, Transakcje, Historia_logowania) oraz z 5 tabel pomocniczych (Typ_Dokumentu_tożsamości, Typ_Konta, Waluty, Typ_transakcji, Status_logowania).

### Tabele główne

1. Użytkownicy - zawiera podstawowe dane identyfikacyjne osób korzystających z systemu finansowego.
2. Konta - przechowuje listę kont bankowych użytkowników.
3. Transakcje - służy do śledzenia wykonywanych operacji finansowych i ich szczegółów.
4. Historia_logowania - zawiera informacje dotyczące szczegółów logowań poszczególnych użytkowników na swoich kontach bankowych lub do bankomatów, np. w celu wykonania pewnej transakcji finansowej (wpłaty/wypłaty gotówki).

## Opis skryptów

### create_database.sql

Tworzy bazę danych o opisanej strukturze.

###  fake_data.sql

Wstawia dane do wszystkich tabel bazy danych.

## transaction.sql

Zawiera 

## indexes.sql

Tworzy niezbędne indeksy w bazie danych.

## procedure.sql

Zawiera procedurę, która zwraca listę bankomatów z konkretną, dzienną sumą wpłat i wypłat gotówki.
