use S¹d
INSERT INTO SPECJALIZACJE
VALUES
('Prawo cywilne'),
('Prawo rodzinne i spadkowe'),
('Prawo spó³ek'),
('Windykacja nale¿noœci'),
('Dochodzenie odszkodowañ'),
('Bankowoœæ i finanse'),
('Prawo energetyczne'),
('Prawo pracy'),
('Projekty infrastrukturalne'),
('Prawo karne gospodarcze'),
('Ochrona œrodowiska'),
('Nieruchomoœci i inwestycje budowlane'),
('W³asnoœæ intelektualna i przemys³owa'),
('Œrodki masowego przekazu i telekomunikacja'),
('Prawo antymonopolowe i konkurencji'),
('Prawo pomocy publicznej'),
('Prawo zamówieñ publicznych'),
('Papiery wartoœciowe i rynki kapita³owe'),
('Rozwi¹zywanie sporów, procesy s¹dowe i arbitra¿owe'),
('Prawo podatkowe, celne, dewizowe'),
('Prawo ubezpieczeñ spo³ecznych'),
('Szkolenia');



INSERT INTO TYPY_PE£NOMOCNICTWA
VALUES
('Adwokat'),
('Ma³¿onek'),
('Brat'),
('Siostra'),
('Doradca podatkowy'),
('Rodzic'),
('Przedstawiciel organu pañstwowego'),
('Radca prawny'),
('Dalsza rodzina'),
('Inne');


INSERT INTO RODZAJE_PE£NOMOCNICTWA
VALUES
('Pe³nomocnictwo ogólne'),
('Pe³nomocnictwo rodzajowe'),
('Pe³nomocnictwo szczególne'),
('Pe³nomocnictwo procesowe');

INSERT INTO WYDZIA£Y(Nazwa, Kierownik)
VALUES
('Cywilny', 'Marisuz Michalczewski'),
('Rodzinny', 'Micha³ Szkot'),
('Pracy', 'Joanna Lipton'),
('Gospodarczy', 'Marianna Toma'),
('Karny', 'Bronis³aw Andrzejczak'),
('Egzekucyjny', 'Cezary ¯uk'),
('Ksi¹g wieczystych', 'Anna Niewiadoma'),
('Kontroli danych telekomunikacyjnych', 'Patrycja Nieznajoma'),
('Ubezpieczeñ spo³ecznych', 'Jerzy Kruk'),
('Wizytacji', 'Marek Naturalny'),
('Penitencjarny', 'Jerzy Gumny');




---------------------- ADWOKACI

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Piotr', 'Sulewski', '03230804314', '1999-03-08');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (1234,'Uniwersytet Gdañski', '2022-08-02', 1, 15);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 123, '2001-12-12', 1234);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Maurycy', 'Duda', '53031544610', '1953-03-15');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (985,'Uniwersytet Gdañski', '1980-08-02', 4, 15);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 59, '1980-12-12', 985);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Emanuel', 'Przybylski', '96081380050', '1996-08-13');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (1995,'Uniwersytet Warszawski', '2020-02-02', 3, 2);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 1223, '2020-5-17', 1995);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Emilia', 'Soko³owska', '40050633005', '1940-05-06');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (11,'Uniwersytet Poznañski', '1967-03-15', 8, 45);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 777, '1967-12-15', 11);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('¯aneta', 'Sawicka', '96092480866', '1996-09-24');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (141,'Uniwersytet Jagielloñski', '2021-10-15', 15, 43);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 2023, '2021-12-12', 141);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Konstanty', 'Malinowski', '71012124532', '1971-01-21');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (352,'SWPS Uniwersytet Humanistycznospo³eczny', '1999-02-25', 13, 99);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 847, '1999-12-12', 352);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Aleks', 'Czarnecki', '43010802471', '1943-01-08');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (31,'Uniwersytet Wroc³awski', '1985-01-04', 4, 189);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 423, '1987-09-05', 31);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Agnieszka', 'Zalewska', '41092350723', '1941-09-23');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (65,'Uniwersytet Wroc³awski', '1968-08-02', 17, 255);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 642, '1970-02-03', 65);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Patryk', 'Wróblewski', '80101667155', '1980-10-16');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (999,'Uniwersytet £ódzki', '2005-08-15', 9, 125);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 2005, '2006-12-12', 999);

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia) 
VALUES ('Izabela', 'Nowak', '49112685408', '1949-11-26');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES (1111,'Uniwersytet £ódzki', '1983-02-02', 10, 252);
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), 3251, '1984-01-05', 1111);


INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Franciszka', 'Urbañska', '83031787708', '1958-05-14');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('150410','Uniwersytet Poznañski', '1978-05-14', '8', '119');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '250181', '1978-05-14', '150410');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Czes³aw', 'Kwiatkowski', '58091268535', '1940-11-17');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('608074','Uniwersytet Gdañski', '1960-11-17', '10', '226');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '340431', '1960-11-17', '608074');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Paula', 'Sobczak', '29030220424', '1928-03-01');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('924214','Uniwersytet Warszawski', '1948-03-01', '16', '289');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '963901', '1948-03-01', '924214');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Adam', 'Cieœlak', '75100512438', '1975-09-09');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('451393','Uniwersytet Gdañski', '1995-09-09', '5', '23');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '949171', '1995-09-09', '451393');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Eugeniusz', 'Cieœlak', '29062142358', '2002-07-19');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('300306','Uniwersytet Wroc³awski', '2022-07-19', '14', '59');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '193369', '2022-07-19', '300306');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Rafa³', 'Laskowska', '38020804371', '1985-09-25');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('129793','Uniwersytet Bydgoski', '2005-09-25', '9', '178');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '749274', '2005-09-25', '129793');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Jacek', 'Adamska', '68092771053', '1964-09-19');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('654373','Uniwersytet Bydgoski', '1984-09-19', '20', '240');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '329474', '1984-09-19', '654373');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Amadeusz', 'Wróblewski', '85051645550', '1944-09-25');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('768654','Uniwersytet Warszawski', '1964-09-25', '6', '79');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '194440', '1964-09-25', '768654');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Wioletta', 'Chmielewski', '45030517221', '1983-03-17');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('578078','Uniwersytet Wroc³awski', '2003-03-17', '7', '206');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '426080', '2003-03-17', '578078');
        

INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
VALUES ('Kryspin', 'Krupa', '43012374118', '1940-06-21');
INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
VALUES ('342880','Uniwersytet Zielonogórski', '1960-06-21', '11', '255');
INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
VALUES (IDENT_CURRENT('Osoby'), '418081', '1960-06-21', '342880');
        




------ PROKURATORZY



        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jola', 'D¹browski', '42071626123', '1945-06-20');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('269874','Uniwersytet Poznañski', '1965-06-20', '16', '211');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1970-06-20', NULL, '269874');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edyta', 'Walczak', '31041286124', '1945-06-20');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('23417','Uniwersytet Zielonogórski', '1965-06-20', '18', '180');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1970-06-20', NULL, '23417');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jola', 'Jakubowski', '90020137006', '1992-10-05');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('708525','Uniwersytet Jagielloñski', '2012-10-05', '2', '117');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2017-10-05', NULL, '708525');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Boles³aw', 'Lis', '81060666858', '1974-08-09');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('628851','Uniwersytet Warszawski', '1994-08-09', '3', '167');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1999-08-09', NULL, '628851');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Oktawia', 'Sawicki', '52031401321', '1986-02-22');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('940633','Uniwersytet Wroc³awski', '2006-02-22', '14', '113');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2011-02-22', NULL, '940633');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Leszek', 'Stêpieñ', '24091105358', '1965-08-20');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('925961','Uniwersytet Warszawski', '1985-08-20', '5', '183');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1990-08-20', NULL, '925961');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Miko³aj', 'Walczak', '85092563338', '1959-08-01');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('745420','Uniwersytet Jagielloñski', '1979-08-01', '10', '32');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1984-07-31', '2010-02-01', '745420');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Katarzyna', 'Cieœlak', '25101550562', '1977-08-20');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('697046','Uniwersytet Gdañski', '1997-08-20', '2', '236');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2002-08-20', NULL, '697046');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ryszard', 'Adamska', '37111343753', '1988-03-04');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('356713','Uniwersytet Zielonogórski', '2008-03-04', '7', '28');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2013-03-04', NULL, '356713');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Justyna', 'Krupa', '62041330728', '1962-04-13');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('473331','Uniwersytet Gdañski', '1990-09-20', '2', '253');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1995-09-19', '2005-09-20', '473331');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Cecylia', 'W³odarczyk', '60051738646', '1983-11-08');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('765604','Uniwersytet £ódzki', '2003-11-08', '13', '155');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2008-11-07', NULL, '765604');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Florentyna', 'Lis', '93032635306', '1956-03-05');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('540912','Uniwersytet Wroc³awski', '1976-03-05', '7', '145');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1981-03-05', '2015-03-05', '540912');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Danuta', 'Makowski', '46011721806', '1946-01-17');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('19154','Uniwersytet £ódzki', '1988-04-08', '21', '33');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1995-04-08', '2005-02-02', '19154');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Rafa³', 'Krajewska', '63040935075', '1924-01-01');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('488995','Uniwersytet Jagielloñski', '1944-01-01', '14', '179');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1948-12-31', '1999-01-01', '488995');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edyta', 'Kamiñski', '27062447824', '1993-03-26');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('365120','Uniwersytet Wroc³awski', '2013-03-26', '19', '62');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2018-03-26', NULL, '365120');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edyta', 'Ko³odziej', '78072476207', '1978-07-24');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('151025','Uniwersytet Lubliñski', '2010-02-01', '5', '300');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2015-02-01', NULL, '151025');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Daniel', 'Cieœlak', '96050514154', '1944-06-22');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('56341','Uniwersytet Bydgoski', '1964-06-22', '13', '58');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1969-06-22', NULL, '56341');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jakub', 'Sadowska', '78040842751', '1978-04-08');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('924123','Uniwersytet Warszawski', '2003-10-27', '12', '285');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2010-10-27', NULL, '924123');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Amadeusz', 'Kamiñski', '91030481752', '1991-03-04');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('766809','Uniwersytet Warszawski', '2015-10-27', '21', '171');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '2022-10-27', NULL, '766809');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ewa', 'Szczepañski', '77080456146', '1966-05-23');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('159598','Uniwersytet Zielonogórski', '1986-05-23', '11', '175');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1991-05-23', NULL, '159598');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gustaw', 'Krajewska', '78101230011', '1966-07-09');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('298994','Uniwersytet Poznañski', '1986-07-09', '19', '274');
        INSERT INTO PROKURATORZY(ID_Prokuratora, Data_mianowania, Data_zakoñczenia, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '1991-07-09', '2010-07-09', '298994');
        

-------------------------- SÊDZIOWIE

		
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Diego', 'Sadowska', '01260117730', '1955-10-07');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('37085','Uniwersytet Wroc³awski', '1975-10-07', '11', '145');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '37085','1980-10-06', NULL, 'Gospodarczy');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ida', 'Krawczyk', '05230345026', '1990-10-02');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('808794','Uniwersytet Warszawski', '2010-10-02', '14', '222');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '808794','2015-10-02', NULL, 'Kontroli danych telekomunikacyjnych');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Blanka', 'Sobczak', '40011233323', '1953-04-01');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('862854','Uniwersytet Gdañski', '1973-04-01', '18', '146');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '862854','1978-04-01', '2022-04-01', 'Egzekucyjny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jacek', 'Zalewski', '94050743053', '1962-03-22');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('387659','Uniwersytet Warmiñsko-Mazurski', '1982-03-22', '21', '228');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '387659','1987-03-22', '2010-03-22', 'Rodzinny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ewa', 'Czarnecki', '98071242063', '1998-02-25');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('769228','Uniwersytet Poznañski', '2018-02-25', '13', '209');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '769228','2023-02-25', NULL, 'Egzekucyjny');

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Cyprian', 'Sikora', '77081454433', '1986-05-11');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('127940','Uniwersytet Gdañski', '2006-05-11', '5', '171');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '127940','2011-05-11', NULL, 'Egzekucyjny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Leszek', 'Lewandowski', '41071933738', '1968-09-27');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('319155','Uniwersytet Gdañski', '1988-09-27', '7', '229');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '319155','1993-09-27', NULL, 'Egzekucyjny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Kamil', 'Kamiñski', '38070921376', '1998-02-26');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('196702','Uniwersytet Zielonogórski', '2018-02-26', '12', '237');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '196702','2023-02-26', NULL, 'Gospodarczy');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Anatolia', 'Lewandowski', '34072182140', '1976-03-17');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('641083','Uniwersytet Lubliñski', '1996-03-17', '11', '28');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '641083','2001-03-17', NULL, 'Gospodarczy');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jerzy', 'Kamiñski', '64041236271', '1979-05-21');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('510497','Uniwersytet Bydgoski', '1999-05-21', '16', '134');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '510497','2004-05-20', NULL, 'Karny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Dominika', 'Baranowski', '92071382824', '1990-10-02');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('323732','Uniwersytet Zielonogórski', '2010-10-02', '5', '204');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '323732','2015-10-02', NULL, 'Karny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Przemys³aw', 'Kubiak', '74080985674', '1959-08-01');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('57266','Uniwersytet Kazimierza Wielkiego', '1979-08-01', '17', '21');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '57266','1984-07-31', '2010-08-01', 'Ksi¹g wieczystych');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Micha³', 'Laskowska', '62032214017', '1975-10-05');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('943993','Uniwersytet £ódzki', '1995-10-05', '14', '178');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '943993','2000-10-04', NULL, 'Kontroli danych telekomunikacyjnych');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Eliza', 'Adamska', '77112616005', '1957-11-07');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('549471','Uniwersytet Wroc³awski', '1977-11-07', '5', '270');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '549471','1982-11-07', '2018-11-07', 'Cywilny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jêdrzej', 'Gajewska', '02302785214', '1968-06-26');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('591658','Uniwersytet £ódzki', '1988-06-26', '16', '155');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '591658','1993-06-26', NULL, 'Cywilny');
        

         INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Fryderyk', 'Szczepañski', '26110157430', '1963-05-13');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('686783','Uniwersytet Zielonogórski', '1983-05-13', '5', '172');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '686783','1988-05-12', '2022-05-13', 'Wizytacji');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Denis', 'Sikora', '75090912036', '1998-08-21');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('123398','Uniwersytet Warszawski', '2018-08-21', '14', '221');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '123398','2023-08-21', NULL, 'Kontroli danych telekomunikacyjnych');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Eustachy', 'G³owacka', '39112062132', '1996-05-16');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('858136','Uniwersytet Rzeszowski', '2016-05-16', '21', '15');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '858136','2021-05-16', NULL, 'Ubezpieczeñ spo³ecznych');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Daniel', 'Lis', '44040155418', '1985-06-03');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('308166','Uniwersytet Zielonogórski', '2005-06-03', '3', '279');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '308166','2010-06-03', NULL, 'Gospodarczy');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Klaudia', 'Kwiatkowski', '81022528367', '1998-02-25');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('551922','Uniwersytet Poznañski', '2018-02-25', '19', '199');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '551922','2023-02-25', NULL, 'Penitencjarny');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ma³gorzata', 'Mróz', '62102300024', '1952-01-04');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('995116','Uniwersytet Wroc³awski', '1972-01-04', '8', '16');
        INSERT INTO SÊDZIOWIE(ID_Sêdziego, Numer_dyplomu, Data_mianowania, Data_zakoñczenia, Wydzia³)
        VALUES (IDENT_CURRENT('Osoby'), '995116','1977-01-03', NULL, 'Pracy');
        

------ SPRAWY

		INSERT INTO SPRAWY(Sygnatura, Data_wniesienia, Data_przyjêcia, Opis_sprawy, Status_sprawy, Rodzaj_postêpowania, 
		Wyrok, Data_rozpoczêcia, Data_zakoñczenia, Liczba_rozpraw, Poufne, Dowody, Wyrok_prawomocny)
		VALUES
    ('I ACa 910/13', '2014-04-17', '2014-09-20', 'Sprawa karna o kradzie¿', 'Rozpatrywana', 'Postêpowanie karne',
    'Odmowa udzielenia odszkodowania', '2015-05-22', '2016-05-22', 5, 0, 'Zabezpieczone', 1),
	
	('I AGa 132/18', '2013-02-10', '2013-02-15', 'Sprawa cywilna o odszkodowanie', 'Rozpatrywana', 'Postêpowanie cywilne',
    'Ustalenie wysokoœci odszkodowania', '2013-11-19', '2014-04-14', 7, 0, 'Zabezpieczone', 0),
    
    ('II AKa 327/13', '2006-04-12', '2023-03-10', 'Sprawa administracyjna o wydanie zezwolenia', 'Oczekuje', 'Postêpowanie administracyjne',
    NULL, '2023-03-20', NULL, 2, 1, 'Brak', NULL),
    
    ('II AKa 268/15', '2016-01-01', '2016-01-15', 'Sprawa karna o oszustwo', 'Zakoñczona', 'Postêpowanie karne',
    'Skazanie na karê pozbawienia wolnoœci', '2016-01-27', '2016-05-16', 10, 0, 'Zabezpieczone', 1),
	
	('III APz 32/12', '2006-09-12', '2008-05-10', 'Sprawa cywilna o rozwód', 'Rozpatrywana', 'Postêpowanie cywilne',
    NULL, '2009-06-01', NULL, 4, 0, 'Zabezpieczone', 0),

    ('III AUa 1628/10', '2006-05-03', '2006-10-20', 'Sprawa administracyjna o uznanie prawa do emerytury', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Uznanie prawa do emerytury', '2007-07-01', '2008-08-10', 6, 0, 'Zabezpieczone', 1),

    ('III AUa 1641/11', '2009-07-25', '2009-07-30', 'Sprawa karna o napaœæ', 'Oczekuje', 'Postêpowanie karne',
    NULL, '2009-08-15', NULL, 3, 0, 'Zabezpieczone', NULL),

    ('III AUa 1438/11', '2009-09-10', '2009-09-15', 'Sprawa cywilna o podzia³ maj¹tku', 'Rozpatrywana', 'Postêpowanie cywilne',
    NULL, '2009-09-25', NULL, 5, 0, 'Zniszczone', NULL),
	
	('III AUa 1414/11', '2009-10-05', '2009-10-10', 'Sprawa administracyjna o nadanie obywatelstwa', 'Oczekuje', 'Postêpowanie administracyjne',
    NULL, '2009-10-20', NULL, 2, 1, 'Zabezpieczone', NULL),

    ('I ACa 1589/06', '2015-11-15', '2015-11-20', 'Sprawa cywilna o odszkodowanie za wypadek komunikacyjny', 'Zakoñczona', 'Postêpowanie cywilne',
    'Przyznanie odszkodowania', '2015-12-01', '2020-01-10', 8, 0, 'Zabezpieczone', 1),

    ('I ACa 1164/06', '2015-01-25', '2015-01-30', 'Sprawa karna o kradzie¿ sklepow¹', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '2015-02-15', NULL, 4, 0, 'Brak', NULL),

    ('II AKa 33/07', '2015-03-10', '2015-03-15', 'Sprawa administracyjna o pozwolenie na budowê', 'Rozpatrywana', 'Postêpowanie administracyjne',
    NULL, '2015-03-25', NULL, 6, 0, 'Zabezpieczone', NULL),

	('I ACa 249/07', '2015-04-05', '2015-04-10', 'Sprawa cywilna o spadek', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2015-04-20', NULL, 3, 0, 'Zabezpieczone', NULL),

    ('I ACa 376/07', '2020-05-15', '2020-05-20', 'Sprawa karna o oszustwo finansowe', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '2020-06-01', NULL, 5, 0, 'Zagubione', NULL),

    ('I ACa 731/07', '2020-06-25', '2020-06-30', 'Sprawa administracyjna o przyznanie renty', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Przyznanie renty', '2020-07-10', '2020-08-20', 7, 0, 'Zabezpieczone', 1),

    ('I ACa 910/07', '2020-09-05', '2020-09-10', 'Sprawa cywilna o uniewa¿nienie umowy', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2020-09-20', NULL, 4, 0, 'Spalone', NULL),

	 ('I ACa 320/12', '2021-10-05', '2021-10-10', 'Sprawa administracyjna o zezwolenie na prowadzenie dzia³alnoœci gospodarczej', 'Rozpatrywana', 'Postêpowanie administracyjne',
    NULL, '2021-10-20', NULL, 3, 0, 'Zabezpieczone', NULL),

    ('I ACa 392/13', '2021-11-15', '2021-11-20', 'Sprawa karna o przestêpstwo narkotykowe', 'Zakoñczona', 'Postêpowanie karne',
    'Skazanie na karê pozbawienia wolnoœci', '2021-12-01', '2023-01-10', 6, 0, 'Zniszczone', 1),

    ('I ACa 395/13', '2005-01-25', '2005-01-30', 'Sprawa cywilna o ustalenie ojcostwa', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2006-02-15', NULL, 4, 0, 'Zabezpieczone', NULL),

    ('I ACa 391/20', '2012-03-10', '2012-03-15', 'Sprawa administracyjna o odszkodowanie za szkody komunikacyjne', 'Rozpatrywana', 'Postêpowanie administracyjne',
    NULL, '2014-03-25', NULL, 5, 0, 'Zabezpieczone', NULL),

	('I ACa 394/12', '2010-04-05', '2010-04-10', 'Sprawa cywilna o podzia³ maj¹tku po rozwodzie', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2011-04-20', NULL, 3, 0, 'Zabezpieczone', NULL),

    ('I ACa 391/14', '2000-05-15', '2000-05-20', 'Sprawa karna o przestêpstwo korupcyjne', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '2021-06-01', NULL, 5, 0, 'Zabezpieczone', NULL),

    ('I ACa 364/13', '2009-06-25', '2009-06-30', 'Sprawa administracyjna o œwiadczenia rodzinne', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Przyznanie œwiadczeñ rodzinnych', '2012-07-10', '2023-08-20', 6, 0, 'Zabezpieczone', 1),

    ('I ACa 379/15', '2021-09-05', '2022-09-10', 'Sprawa cywilna o zniesienie wspólnoœci maj¹tkowej', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2023-09-20', NULL, 4, 0, 'Zabezpieczone', NULL),

	('III AUa 895/19', '2008-01-05', '2008-01-10', 'Sprawa cywilna o rozwód', 'Zakoñczona', 'Postêpowanie cywilne',
    'Orzeczenie rozwodu', '2014-02-01', '2018-03-15', 4, 0, 'Zabezpieczone', 1),

    ('III AUa 894/18', '2008-02-15', '2008-02-20', 'Sprawa karna o kradzie¿', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '2008-03-01', NULL, 3, 0, 'Zabezpieczone', NULL),

	--uzyte
    ('III AUa 902/12', '2008-03-25', '2008-03-30', 'Sprawa administracyjna o emeryturê', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Przyznanie emerytury', '2011-04-10', '2013-05-20', 6, 0, 'Zabezpieczone', 1),

	--uzyte
    ('III AUa 904/12', '2008-04-05', '2008-04-10', 'Sprawa cywilna o spadek', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2010-04-20', NULL, 3, 0, 'Zabezpieczone', NULL),

	--uzyte
	('V ACa 276/16', '1999-01-05', '1999-01-10', 'Sprawa cywilna o rozwód', 'Zakoñczona', 'Postêpowanie cywilne',
    'Orzeczenie rozwodu', '1999-02-01', '1999-03-15', 4, 0, 'Zabezpieczone', 1),

	--uzyte
    ('V ACa 275/14', '1999-02-15', '1999-02-20', 'Sprawa karna o kradzie¿', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '1999-03-01', NULL, 3, 0, 'Zabezpieczone', NULL),

	--uzyte
    ('V ACa 272/13', '1999-03-25', '1999-03-30', 'Sprawa administracyjna o emeryturê', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Przyznanie emerytury', '1999-04-10', '1999-05-20', 6, 0, 'Zabezpieczone', 1),

	--uzyte
    ('V ACa 267/13', '1999-04-05', '1999-04-10', 'Sprawa cywilna o spadek', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '1999-04-20', NULL, 3, 0, 'Zabezpieczone', NULL),
	
	--uzyte
	('III AUa 845/12', '2015-01-05', '2015-01-10', 'Sprawa cywilna o rozwód', 'Zakoñczona', 'Postêpowanie cywilne',
    'Orzeczenie rozwodu', '2015-02-01', '2015-03-15', 4, 0, 'Zabezpieczone', 1),

		--uzyte
    ('III APz 13/20', '2015-02-15', '2015-02-20', 'Sprawa karna o kradzie¿', 'Rozpatrywana', 'Postêpowanie karne',
    NULL, '2015-03-01', NULL, 3, 0, 'Zabezpieczone', NULL),

	--uzyte
    ('III APz 27/17', '2015-03-25', '2015-03-30', 'Sprawa administracyjna o emeryturê', 'Zakoñczona', 'Postêpowanie administracyjne',
    'Przyznanie emerytury', '2015-04-10', '2015-05-20', 6, 0, 'Zabezpieczone', 1),

	-- uzyte
    ('III AUa 919/17', '2015-04-05', '2015-04-10', 'Sprawa cywilna o spadek', 'Oczekuje', 'Postêpowanie cywilne',
    NULL, '2015-04-20', NULL, 3, 0, 'Zabezpieczone', NULL);

        
-------- osoby

		INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
		VALUES ('Kamil', 'B³aszczyk', '85050435530', '1963-08-10');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 919/17', 0)
	
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Dominika', 'Krupa', '29060151765', '1953-02-11');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 919/17', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (1, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (4, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
      
   
------------------------------------      
        
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jakub', 'Pawlak', '45052452214', '1943-05-25');
        INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 27/17', 0)

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jakub', 'Jakubowski', '77112042039', '1925-05-07');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III APz 27/17', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (2, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (5, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
 
------------------------------------
  
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Aureliusz', 'Pietrzak', '71062380559', '1955-08-12');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 13/20', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edward', 'D¹browski', '65052652575', '1951-10-20');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III APz 13/20', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (3, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (6, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
 
------------------------------------       

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Joanna', 'Szulc', '07282305144', '2007-08-23');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 845/12', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Eliza', 'Makowski', '79111502020', '1982-04-19');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 845/12', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (1, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (7, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
  
------------------------------------      

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Boles³aw', 'Jasiñski', '57012447277', '1946-06-03');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 267/13', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Anastazja', 'Wojciechowski', '32021845562', '1996-01-19');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'V ACa 267/13', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (10, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (11, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));

------------------------------------       

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gniewomir', 'Adamska', '92081248419', '1983-06-04');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 272/13', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Lidia', 'Przybylski', '80111747744', '1948-08-03');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'V ACa 272/13', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (10, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (11, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
        
------------------------------------
  
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Daniel', 'Wójcik', '24020450117', '1957-11-18');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 275/14', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ryszard', 'Wojciechowski', '79010113130', '1953-03-26');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'V ACa 275/14', 'Osoba fizyczna')
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (15, 4, 1, IDENT_CURRENT('ROZPOCZYNA'), null);
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (17, 4, 1, null,IDENT_CURRENT('BRONI_SIÊ_W'));
        
		
------------------------------------
  

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edward', 'Wójcik', '83070722816', '1990-10-10');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 276/16', 1)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jola', 'Ostrowski', '53101721769', '1991-06-08');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'V ACa 275/14', 'Osoba fizyczna')


        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Eliza', 'Kamiñski', '94091767209', '1961-03-01');
		INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 4, 4, IDENT_CURRENT('ROZPOCZYNA'), null);
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gabriel', 'Borkowski', '79051344656', '1969-01-06');
        INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 4, 9, null,IDENT_CURRENT('BRONI_SIÊ_W'));

------------------------------------
        
		INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Olga', 'Stêpieñ', '36021963448', '1936-11-03');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 904/12', 1)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ryszard', 'Laskowska', '46060303459', '1981-07-03');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 904/12', 'Osoba fizyczna')

    
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ksawery', 'Adamska', '95011560214', '1984-10-16');
        INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 3, 2, IDENT_CURRENT('ROZPOCZYNA'), null);

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ariel', 'Sobczak', '78032187732', '1995-02-20');
		  INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 1, 7, null,IDENT_CURRENT('BRONI_SIÊ_W'));
        
	----------------------------------
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Borys', 'Kamiñski', '93112037673', '1967-08-14');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 902/12', 1)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Cezary', 'Zió³kowska', '43081722056', '1956-01-10');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 902/12', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Julian', 'Krupa', '67092721471', '1997-11-01');
		 INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 2, 10, IDENT_CURRENT('ROZPOCZYNA'), null);
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Oskar', 'Kalinowski', '50041226271', '2004-04-16');
		 INSERT INTO PE£NOMOCNICY(ID_Pe³nomocnika, Rodzaj_pe³nomocnictwa, Typ_pe³nomocnika, ID_Rozpoczynajacego, ID_Broniacego_sie)
		VALUES (IDENT_CURRENT('OSOBY'), 2, 9, null,IDENT_CURRENT('BRONI_SIÊ_W'));
        
-------------------------- BEZ PE£NOMOCNIKÓW
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gracjan', 'Urbañska', '44060662538', '1926-01-10');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 895/19', 1)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Remigiusz', 'Zió³kowska', '40110532433', '1995-02-20');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 895/19', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Oliwia', 'Zalewski', '99041623749', '1976-03-15');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 894/18', 1)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Paula', 'WoŸniak', '41052324724', '1932-01-22');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 894/18', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Blanka', 'Kwiatkowski', '75111580604', '1985-09-14');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 845/12', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Otylia', 'Krajewska', '76031561421', '2001-01-05');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 845/12', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Eliza', 'Pietrzak', '46030358104', '1979-11-17');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1641/11', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Paula', 'Adamska', '91032704866', '1953-02-11');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III AUa 1641/11', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edyta', 'Gajewska', '63021908540', '1975-07-10');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1628/10', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jola', 'Pawlak', '43072377346', '1975-11-15');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (40, 'III AUa 1628/10', 'Prokurator')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Anastazja', 'Zieliñski', '95112585521', '1965-10-05');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1438/11', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Heronim', 'Makowski', '75070501810', '1951-10-20');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (37, 'III AUa 1438/11', 'Prokurator')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Allan', 'Kwiatkowski', '89111740535', '1943-11-12');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1414/11', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Kryspin', 'Zió³kowska', '46100514171', '1969-08-19');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (26, 'III AUa 1414/11', 'Prokurator')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Anastazja', 'Ko³odziej', '71062554107', '1971-07-13');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 32/12', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Joachim', 'Zalewski', '90111485711', '1938-03-10');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (22, 'III APz 32/12', 'Prokurator')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Edward', 'Rutkowski', '81070333436', '1942-02-09');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 27/17', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Blanka', 'Pawlak', '56112310140', '1943-07-23');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (22, 'III APz 27/17', 'Prokurator')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Aleks', 'WoŸniak', '84112105158', '1953-03-26');
		INSERT INTO BRONI_SIÊ_W(ID_Pozwanego, Sygnatura_sprawy, Areszt_tymczasowy)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 13/20', 0)
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Dariusz', 'Zalewski', '43052511115', '1990-11-14');
		INSERT INTO ROZPOCZYNA(ID_Powoda, Sygnatura_sprawy, Rodzaj_powoda)
		VALUES (IDENT_CURRENT('Osoby'), 'III APz 13/20', 'Osoba fizyczna')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Martin', 'Sobczak', '86100330359', '1977-01-17');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'I ACa 364/13', 'Nauczyciel dziecka', '2012-07-10')
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Karolina', 'Cieœlak', '60051576208', '1934-05-01');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'I ACa 1164/06', 'Œwiadek zdarzenia, kupowa³ akurat w sklepie', (Select data_rozpoczêcia from sprawy where sygnatura = 'I ACa 1164/06'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Martin', 'Kamiñski', '45051760514', '1992-08-18');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 276/16', 'S¹siadka', (Select data_rozpoczêcia from sprawy where sygnatura = 'V ACa 276/16'))
        
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jakub', 'Cieœlak', '25050718350', '1951-10-20');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 275/14', 'Œwiadek zdarzenia, przechodzi³ ulic¹ podczas zdarzenia', (Select data_rozpoczêcia from sprawy where sygnatura = 'V ACa 275/14'))

        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Olga', 'Jakubowski', '36022621565', '1971-04-04');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 272/13', 'Ma³¿onek', (Select data_rozpoczêcia from sprawy where sygnatura = 'V ACa 272/13'))

        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Joanna', 'Adamska', '76110707623', '1955-10-06');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'V ACa 267/13', 'Córka zmar³ej', (Select data_rozpoczêcia from sprawy where sygnatura = 'V ACa 267/13'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Maja', 'Wojciechowski', '42061002229', '1953-09-04');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 919/17', 'Wnuczka zmar³ego', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 919/17'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gracjan', 'Sadowska', '56011062717', '1991-06-06');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 904/12', 'Prawnuczek zmar³ego', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 904/12'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Arkadiusz', 'Kwiatkowski', '57111805374', '1983-07-07');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 902/12', 'Wspó³lokator', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 902/12'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jowita', 'Lis', '48080317544', '1928-11-17');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 895/19', 'Siostra mê¿a', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 895/19'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Patrycja', 'Pietrzak', '30060313161', '1979-11-17');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 894/18', 'Pracowniczka restauracji, kucharz - obezw³adni³a w³amywacza', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 894/18'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gracjan', 'Wróblewski', '65051015612', '1951-01-27');
		INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 845/12', 'Ojciec ¿ony', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 845/12'))
        
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Alina', 'Borkowski', '96060284421', '1955-11-07');
        INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1641/11', 'Œwiadek zdarzenia, w obronie mê¿a, pobi³a napastnika ', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 1641/11'))

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Fabian', 'Sikora', '78011300512', '1992-08-12');
		 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1628/10', 'Kolega wnosz¹cej sprawe', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 1628/10'))

        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Piotr', 'D¹browski', '76072410810', '1960-05-16');
		 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1438/11', 'Syn', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 1438/11'))

        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Rafa³', 'Adamska', '85110703218', '1968-07-19');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III AUa 1414/11', 'Prze³o¿ony wnioskuj¹cego', (Select data_rozpoczêcia from sprawy where sygnatura = 'III AUa 1414/11'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Milan', 'Soko³owski', '95022026817', '1943-08-17');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 32/12', 'Szwagier', (Select data_rozpoczêcia from sprawy where sygnatura = 'III APz 32/12'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jerzy', 'D¹browski', '74051051650', '1979-05-13');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 27/17', 'Pasierb', (Select data_rozpoczêcia from sprawy where sygnatura = 'III APz 27/17'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ryszard', 'Koz³owski', '88062545578', '1928-07-17');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'III APz 13/20', 'Sprz¹tacz, podczas napaœci obezw³adni³ mopem atakuj¹cego', (Select data_rozpoczêcia from sprawy where sygnatura = 'III APz 13/20'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Fabian', 'Pawlak', '01271670132', '2001-07-16');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'II AKa 33/07', 'So³tys gminy', (Select data_rozpoczêcia from sprawy where sygnatura = 'II AKa 33/07'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Gabriel', 'D¹browski', '00212123353', '1943-05-25');
			 INSERT INTO ZEZNAJE(ID_Œwiadka, Sygnatura_sprawy, Powi¹zanie, Data_zeznañ)
		VALUES (IDENT_CURRENT('OSOBY'), 'II AKa 327/13', 'Za³o¿yciel restuaracji Bikini Dolne', (Select data_rozpoczêcia from sprawy where sygnatura = 'II AKa 327/13'))
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Cezary', 'Jasiñski', '72110425772', '1941-09-19');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Diego', 'Kubiak', '87032377773', '1976-07-24');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Blanka', 'Ko³odziej', '36110368321', '1936-02-19');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Ryszard', 'Wróblewski', '66021751514', '1990-10-10');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Alina', 'Ko³odziej', '82041982466', '1984-09-24');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Celina', 'Kubiak', '93010466005', '1985-09-14');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Fabian', 'Sikorska', '57032430453', '1956-01-10');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Patrycja', 'Walczak', '32022788606', '1925-03-25');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Marta', 'Pawlak', '59080547260', '1979-11-17');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Otylia', 'Lis', '34070177168', '1940-07-06');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Jowita', 'Malinowski', '96011950667', '1932-01-22');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Piotr', 'Ko³odziej', '60051632230', '1925-05-07');
        

        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('Anita', 'Urbañska', '65100506720', '1936-02-26');
        


		--------------- sedziowie/sprawy

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (42, 'I ACa 1589/06');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (42, 'I ACa 1164/06');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (53, 'I ACa 320/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (42, 'I ACa 320/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (54, 'I ACa 391/14');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (55, 'I ACa 391/20');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (56, 'I ACa 392/13');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (44, 'I ACa 394/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (53, 'I ACa 395/13');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (57, 'I ACa 731/07');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (48, 'I ACa 910/07');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (47, 'I ACa 910/07');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (46, 'I ACa 910/07');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (46, 'I ACa 910/13');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (44, 'III AUa 902/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (43, 'III AUa 895/19');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (54, 'III AUa 894/18');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (53, 'III AUa 845/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (50, 'III AUa 1641/11');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (50, 'III AUa 1628/10');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (62, 'III AUa 1438/11');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (61, 'III AUa 1414/11');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (59, 'III APz 32/12');

		INSERT INTO SÊDZIOWIE_SPRAWY(ID_Sêdziego, Sygnatura_sprawy)
		VALUES (51, 'III APz 27/17');