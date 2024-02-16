[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/README.md)
[![pl](https://img.shields.io/badge/lang-pl-red.svg)](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/README.pl.md)

# Relacyjna Baza Danych | Rejest spraw sądowych

[Schemat](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/Schema.pdf)


Projekt ma na celu stworzenie nowoczesnego systemu rejestru spraw sądowych, który umożliwi elektroniczne zarządzanie danymi związanymi z postępem spraw sądowych. 
System ten będzie służyć do przechowywania informacji o stronach sprawy, pełnomocnikach, wyrokach oraz innych kluczowych elementach procesu sądowego. 
Wdrożenie takiego systemu przyczyni się do usprawnienia pracy sądów, zwiększenia dostępności informacji oraz poprawy jakości usług świadczonych przez wymiar sprawiedliwości.

Klientem jest kierownictwo sądu.
Projekt zakłada stworzenie systemu informatycznego wspomagającego zarządzanie danymi dotyczącymi spraw sądowych. 
Baza danych będzie obejmować informacje niezbędne do skutecznego monitorowania, zarządzania i obsługi spraw sądowych
Użytkownikami bazy danych są pracownicy sądu. Pracownicy, którzy po zweryfikowaniu uprawnień do ujrzenia konkretnych danych będą mogli przekazać te informacje osobą postronnym.

Poniżej przedstawiam opis poszczególnych elementów struktury projektu:

- Rejestr Spraw Sądowych:
Wprowadzenie sprawy do systemu rozpoczyna proces jej rejestracji. Każda sprawa jest przypisana unikalnemu numerowi identyfikacyjnemu, co ułatwia śledzenie postępów i dostęp do informacji o danej sprawie. 
System umożliwia również klasyfikację spraw , co pozwala na efektywne grupowanie i sortowanie spraw.

- Wyrok i Postanowienia:
W tej sekcji zawarte są istotne elementy każdej sprawy sądowej. Tekst wyroku lub postanowień sądu jest przechowywany w formie cyfrowej. 
To umożliwia szybkie dostarczanie stronie lub pełnomocnikowi kopii wyroku oraz przypisywanie kar lub sankcji, jeśli to konieczne. Dodatkowo, system gromadzi dane o dacie ogłoszenia wyroku.

- Strony Sprawy:
Ten element bazy danych koncentruje się na uczestnikach postępowania sądowego. 
Dane strony powodowej i pozwanej, a także ich pełnomocników, są przechowywane w systemie. To umożliwia szybkie identyfikowanie stron oraz kontaktowanie się z nimi w razie konieczności. System pozwala również uwzględnić inne strony, takie jak świadkowie.

- Terminy i Rozprawy:
Ten obszar bazy danych służy do zarządzania kalendarzem sądu. Można tu znaleźć informacje o ustalonych terminach rozpraw, ich ewentualnych przełożeniach, a także konieczności dostępu do akt sprawy przez strony lub ich pełnomocników. 
Wszystko to po to, aby zapewnić terminową realizację procedur procesowych.

- Sędziowie:
To sekcja, która gromadzi informacje o sędziach zaangażowanych w daną sprawę. Pozwala na monitorowanie obciążenia pracą sędziów oraz efektywne przypisywanie spraw do odpowiednich osób.

Przykładowe zapytania do bazy danych:
- Pobranie informacji o konkretnej sprawie na podstawie sygnatury sprawy
- Wyszukanie wszystkich spraw prowadzonych przez danego sędziego
- Znalezienie spraw, w których nie wydano jeszcze wyroku:
- Lista spraw, w których dana osoba jest pozwanym
- Pobranie listy prokuratorów

W skład bazy nie wchodzą pracownicy sądu, tacy jak księgowi itp.

Projekt ten ma na celu stworzenie narzędzia, które usprawni pracę sądu, zwiększy jego efektywność oraz poprawi dostępność informacji, co wpłynie na jakość i przejrzystość procesów sądowych.



![ERD](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/ERD.png)
