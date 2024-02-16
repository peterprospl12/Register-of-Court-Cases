import csv
import sqlite3
from io import StringIO
import random
from datetime import datetime, timedelta


def zamien_dane(dane_nazwiskowe, dane_osoboweK, dane_osoboweM, numery_pesel_M, numery_pesel_K, daty_urodzenia_M, daty_urodzenia_K):
    uniwersytety = [
        'Uniwersytet Gdański', 'Uniwersytet Łódzki', 'Uniwersytet Jagielloński', 'Uniwersytet Poznański',
        'Uniwersytet Zielonogórski', 'Uniwersytet Warszawski', 'Uniwersytet Bydgoski', 'Uniwersytet Lubliński',
        'Uniwersytet Wrocławski'
    ]

    for _ in range(10):
        los = random.randint(0,1);
        if(los == 1):
            imie = dane_osoboweM[random.randint(0, len(dane_osoboweM)-1)]
            nazwisko = dane_nazwiskowe[random.randint(0, len(dane_nazwiskowe)-1)]
            pesel = numery_pesel_M[random.randint(0, len(numery_pesel_M)-1)]
            data_urodzenia = daty_urodzenia_M[random.randint(0, len(daty_urodzenia_M)-1)]
        else:
            imie = dane_osoboweK[random.randint(0, len(dane_osoboweK)-1)]
            nazwisko = dane_nazwiskowe[random.randint(0, len(dane_nazwiskowe)-1)]
            pesel = numery_pesel_K[random.randint(0, len(numery_pesel_K)-1)]
            data_urodzenia = daty_urodzenia_K[random.randint(0, len(daty_urodzenia_K)-1)]

        uniwersytet = uniwersytety[random.randint(0, len(uniwersytety)-1)]
        # Konwertuj string na obiekt datetime
        data_urodzenia_datetime = datetime.strptime(data_urodzenia, "%Y-%m-%d")
        # Dodaj 20 lat
        nowa_data = data_urodzenia_datetime + timedelta(days=365.25 * 20)
        specjalizacjaaa = random.randint(1,21)
        # Konwertuj z powrotem na string
        nowa_data_urodzenia = nowa_data.strftime("%Y-%m-%d")
        liczba_spraw = random.randint(1, 300)
        numer_dyplomu = random.randint(1, 1000000)
        numer_karty = random.randint(1, 1000000)
        query = f'''
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('{imie}', '{nazwisko}', '{pesel}', '{data_urodzenia}');
        INSERT INTO MAGISTROWIE_NAUK_PRAWNICZYCH(Numer_dyplomu, Uczelnia, Data_uzyskania, Specjalizacja, Liczba_spraw)
        VALUES ('{numer_dyplomu}','{uniwersytet}', '{nowa_data_urodzenia}', '{specjalizacjaaa}', '{liczba_spraw}');
        INSERT INTO ADWOKACI(ID_Adwokata, Nr_wpisu_karty_adwokackiej, Data_wydania_karty_adwokackiej, Numer_dyplomu)
        VALUES (IDENT_CURRENT('Osoby'), '{numer_karty}', '{nowa_data_urodzenia}', '{numer_dyplomu}');
        '''
        # zapis do pliku tekstowego
        with open('zapytania.txt', 'a') as file:
            file.write(query + "\n")




# Przykładowe dane
dane_osoboweM = [
    'Janusz', 'Gustaw', 'Eugeniusz', 'Cyprian', 'Dorian', 'Ignacy', 'Ariel', 'Allan', 'Daniel', 'Miłosz',
    'Konstanty', 'Cyprian', 'Borys', 'Adam', 'Przemysław', 'Łukasz', 'Kazimierz', 'Dorian', 'Mateusz', 'Aureliusz',
    'Bartłomiej', 'Alfred', 'Cyprian', 'Ryszard', 'Gustaw', 'Aleksy', 'Kryspin', 'Arkadiusz', 'Emil', 'Denis', 'Gniewomir',
    'Jerzy', 'Julian', 'Leszek', 'Martin', 'Eustachy', 'Fabian', 'Michał', 'Jarosław', 'Piotr',
    'Leszek', 'Emil', 'Bogumił', 'Lucjan', 'Łukasz', 'Dariusz', 'Kryspin', 'Ireneusz', 'Ernest', 'Jerzy',
    'Bolesław', 'Eryk', 'Aleks', 'Łukasz', 'Ariel', 'Julian', 'Fryderyk', 'Cezary', 'Rafał', 'Bolesław',
    'Joachim', 'Kryspin', 'Kryspin', 'Bartłomiej', 'Anatol', 'Edward', 'Oktawian', 'Heronim', 'Cyprian',
    'Ireneusz', 'Mikołaj', 'Bolesław', 'Ireneusz', 'Edward', 'Andrzej', 'Milan', 'Cyprian', 'Diego',
    'Borys', 'Radosław', 'Henryk', 'Kamil', 'Mikołaj', 'Czesław', 'Kornel', 'Aleks', 'Ksawery', 'Heronim',
    'Arkadiusz', 'Roman', 'Leszek', 'Adam', 'Leonardo', 'Alfred', 'Milan', 'Robert', 'Jakub', 'Krzysztof',
    'Oskar', 'Denis', 'Marcel', 'Czesław', 'Jan', 'Gniewomir', 'Amadeusz', 'Ksawery', 'Amadeusz', 'Amadeusz',
    'Patryk', 'Gracjan', 'Ryszard', 'Gabriel', 'Remigiusz', 'Cyprian', 'Maksymilian', 'Bolesław',
    'Korneliusz', 'Piotr', 'Dorian', 'Mikołaj', 'Milan', 'Bartosz', 'Jacek', 'Jędrzej', 'Edward',
    'Edward', 'Norbert', 'Daniel', 'Gracjan', 'Jakub'
]

dane_osoboweK =['Klaudia', 'Magda', 'Regina', 'Berenika', 'Elwira', 'Lidia', 'Otylia', 'Danuta', 'Anita', 'Elżbieta', 'Jola',
    'Nikola', 'Katarzyna', 'Małgorzata', 'Lidia', 'Karolina', 'Celina', 'Franciszka', 'Danuta', 'Anita', 'Edyta',
    'Edyta', 'Maja', 'Jolanta', 'Joanna', 'Cecylia', 'Natasza', 'Blanka', 'Alina', 'Alisa'
    'Ilona', 'Kaja', 'Anatolia', 'Stanisława', 'Eliza', 'Alina', 'Patrycja', 'Kaja', 'Wioletta', 'Marcela',
    'Anastazja', 'Faustyna', 'Julita', 'Milena', 'Barbara', 'Jowita', 'Paula', 'Roksana', 'Paula', 'Stanisława',
    'Ida', 'Justyna', 'Jola', 'Oktawia', 'Justyna', 'Dorota', 'Bernadetta', 'Edyta', 'Wanda', 'Emilia', 'Oliwia',
    'Małgorzata', 'Malwina', 'Julita', 'Paulina', 'Zuzanna', 'Florentyna', 'Florentyna', 'Joanna', 'Faustyna',
    'Matylda', 'Blanka', 'Wanda', 'Eliza', 'Ewa', 'Olga', 'Dorota', 'Wioletta', 'Cecylia', 'Mirosława', 'Marta',
    'Bogda', 'Anastazja', 'Lara', 'Patrycja', 'Dominika', 'Iza', 'Ewelina', 'Aleksandra', 'Oksana'
]

dane_nazwiskowe = [
    'Makowski', 'Wróblewski', 'Andrzejewski', 'Dąbrowski', 'Szulc', 'Borkowski', 'Ostrowski', 'Kamiński', 'Kwiatkowski', 'Zalewski',
    'Makowski', 'Pawlak', 'Krupa', 'Szulc', 'Kaczmarczyk', 'Dąbrowski', 'Lis', 'Lis', 'Sadowska', 'Włodarczyk',
    'Walczak', 'Wójcik', 'Przybylski', 'Ostrowski', 'Adamska', 'Lewandowski', 'Zieliński', 'Ostrowski', 'Jakubowski',
    'Ziółkowska', 'Krupa', 'Krupa', 'Pietrzak', 'Kaźmierczak', 'Ziółkowska', 'Chmielewski', 'Szczepański', 'Tomaszewski',
    'Nowak', 'Kwiatkowski', 'Zakrzewska', 'Stępień', 'Walczak', 'Laskowska', 'Stępień', 'Mróz', 'Zawadzki', 'Pietrzak',
    'Lewandowski', 'Błaszczyk', 'Kołodziej', 'Borkowski', 'Krajewska', 'Kubiak', 'Zieliński', 'Krawczyk', 'Jaworski',
    'Stępień', 'Rutkowski', 'Dąbrowski'
    'Gajewska', 'Pawlak', 'Lewandowski', 'Laskowska', 'Jaworski', 'Kowalczyk', 'Baranowski', 'Michalak',
    'Kalinowski', 'Jankowski', 'Lis', 'Wojciechowski', 'Sawicki', 'Adamska', 'Jasiński', 'Krajewska',
    'Adamska', 'Jasiński', 'Sokołowski', 'Kozłowski', 'Cieślak', 'Górski', 'Jakubowski', 'Jakubowski',
    'Marciniak', 'Pietrzak', 'Mróz', 'Kołodziej', 'Adamska', 'Woźniak', 'Ziółkowska', 'Pawlak', 'Kalinowski',
    'Andrzejewski', 'Kubiak', 'Sobczak', 'Sikora', 'Ziółkowska', 'Jasiński', 'Kołodziej', 'Ziółkowska', 'Duda',
    'Cieślak', 'Wojciechowski', 'Sadowska', 'Dąbrowski', 'Andrzejewski', 'Makowski', 'Szulc', 'Zalewski',
    'Sikorska', 'Wojciechowski', 'Sokołowski', 'Czarnecki', 'Zalewski', 'Wróblewski', 'Urbańska', 'Głowacka',
    'Wróblewski', 'Maciejewski', 'Gajewska', 'Marciniak', 'Szczepański', 'Szczepański', 'Jakubowski', 'Sokołowski',
    'Urbańska', 'Adamska', 'Kamiński', 'Krupa', 'Makowski', 'Kołodziej', 'Głowacka', 'Makowski', 'Pawlak',
    'Dąbrowski', 'Andrzejewski', 'Urbańska', 'Dąbrowski', 'Marciniak', 'Baran', 'Kowalski', 'Borkowski',
    'Malinowski', 'Szczepański', 'Błaszczyk', 'Mazur', 'Jakubowski', 'Wysocki', 'Wojciechowski'
]

dane_csv_K = """""poprawny";"68012472246";"kobieta";"1968-01-24";"55"
"poprawny";"78031535420";"kobieta";"1978-03-15";"45"
"poprawny";"78102100045";"kobieta";"1978-10-21";"45"
"poprawny";"48081710865";"kobieta";"1948-08-17";"75"
"poprawny";"59100267642";"kobieta";"1959-10-02";"64"
"poprawny";"61062131163";"kobieta";"1961-06-21";"62"
"poprawny";"70082275405";"kobieta";"1970-08-22";"53"
"poprawny";"64110822505";"kobieta";"1964-11-08";"59"
"poprawny";"39112673145";"kobieta";"1939-11-26";"84"
"poprawny";"78112734041";"kobieta";"1978-11-27";"45"
"poprawny";"77080456146";"kobieta";"1977-08-04";"46"
"poprawny";"89072751609";"kobieta";"1989-07-27";"34"
"poprawny";"77112616005";"kobieta";"1977-11-26";"46"
"poprawny";"56051550827";"kobieta";"1956-05-15";"67"
"poprawny";"77081878202";"kobieta";"1977-08-18";"46"
"poprawny";"67022460344";"kobieta";"1967-02-24";"56"
"poprawny";"73071022343";"kobieta";"1973-07-10";"50"
"poprawny";"42071626123";"kobieta";"1942-07-16";"81"
"poprawny";"05230345026";"kobieta";"2005-03-03";"18"
"poprawny";"60051738646";"kobieta";"1960-05-17";"63"
"poprawny";"33022580229";"kobieta";"1933-02-25";"90"
"poprawny";"98022525829";"kobieta";"1998-02-25";"25"
"poprawny";"45071484140";"kobieta";"1945-07-14";"78"
"poprawny";"78041011303";"kobieta";"1978-04-10";"45"
"poprawny";"86022284266";"kobieta";"1986-02-22";"37"
"poprawny";"45062078363";"kobieta";"1945-06-20";"78"
"poprawny";"95062475806";"kobieta";"1995-06-24";"28"
"poprawny";"77012634808";"kobieta";"1977-01-26";"46"
"poprawny";"29030220424";"kobieta";"1929-03-02";"94"
"poprawny";"97050546824";"kobieta";"1997-05-05";"26"
"poprawny";"96032652546";"kobieta";"1996-03-26";"27"
"poprawny";"02242061643";"kobieta";"2002-04-20";"21"
"poprawny";"51072627422";"kobieta";"1951-07-26";"72"
"poprawny";"40022264323";"kobieta";"1940-02-22";"83"
"poprawny";"60091670241";"kobieta";"1960-09-16";"63"
"poprawny";"56030561202";"kobieta";"1956-03-05";"67"
"poprawny";"36060340343";"kobieta";"1936-06-03";"87"
"poprawny";"69091006209";"kobieta";"1969-09-10";"54"
"poprawny";"44061620069";"kobieta";"1944-06-16";"79"
"poprawny";"55010966800";"kobieta";"1955-01-09";"68"
"poprawny";"34072182140";"kobieta";"1934-07-21";"89"
"poprawny";"83092622703";"kobieta";"1983-09-26";"40"
"poprawny";"92020371222";"kobieta";"1992-02-03";"31"
"poprawny";"68111443167";"kobieta";"1968-11-14";"55"
"poprawny";"72052716640";"kobieta";"1972-05-27";"51"
"poprawny";"90020137006";"kobieta";"1990-02-01";"33"
"poprawny";"81011656729";"kobieta";"1981-01-16";"42"
"poprawny";"74041431064";"kobieta";"1974-04-14";"49"
"poprawny";"90042657366";"kobieta";"1990-04-26";"33"
"poprawny";"93020513548";"kobieta";"1993-02-05";"30"
"poprawny";"87012472728";"kobieta";"1987-01-24";"36"
"poprawny";"74062188806";"kobieta";"1974-06-21";"49"
"poprawny";"95011364320";"kobieta";"1995-01-13";"28"
"poprawny";"45052144243";"kobieta";"1945-05-21";"78"
"poprawny";"83042265323";"kobieta";"1983-04-22";"40"
"poprawny";"88110613048";"kobieta";"1988-11-06";"35"
"poprawny";"82051162021";"kobieta";"1982-05-11";"41"
"poprawny";"87061265744";"kobieta";"1987-06-12";"36"
"poprawny";"81022528367";"kobieta";"1981-02-25";"42"
"poprawny";"51010677164";"kobieta";"1951-01-06";"72"
"poprawny";"62102300024";"kobieta";"1962-10-23";"61"
"poprawny";"75112153609";"kobieta";"1975-11-21";"48"
"poprawny";"98071242063";"kobieta";"1998-07-12";"25"
"poprawny";"76062411001";"kobieta";"1976-06-24";"47"
"poprawny";"04282068709";"kobieta";"2004-08-20";"19"
"poprawny";"75092206500";"kobieta";"1975-09-22";"48"
"poprawny";"05290610869";"kobieta";"2005-09-06";"18"
"poprawny";"60012403226";"kobieta";"1960-01-24";"63"
"poprawny";"34110582727";"kobieta";"1934-11-05";"89"
"poprawny";"27062447824";"kobieta";"1927-06-24";"96"
"poprawny";"38040644227";"kobieta";"1938-04-06";"85"
"poprawny";"83110877469";"kobieta";"1983-11-08";"40"
"poprawny";"58051441365";"kobieta";"1958-05-14";"65"
"poprawny";"31041286124";"kobieta";"1931-04-12";"92"
"poprawny";"54011575028";"kobieta";"1954-01-15";"69"
"poprawny";"01280553608";"kobieta";"2001-08-05";"22"
"poprawny";"25101550562";"kobieta";"1925-10-15";"98"
"poprawny";"92100528762";"kobieta";"1992-10-05";"31"
"poprawny";"28030114841";"kobieta";"1928-03-01";"95"
"poprawny";"92071382824";"kobieta";"1992-07-13";"31"
"poprawny";"77082028729";"kobieta";"1977-08-20";"46"
"poprawny";"76031706668";"kobieta";"1976-03-17";"47"
"poprawny";"66052318544";"kobieta";"1966-05-23";"57"
"poprawny";"81102003409";"kobieta";"1981-10-20";"42"
"poprawny";"76090421764";"kobieta";"1976-09-04";"47"
"poprawny";"90100244141";"kobieta";"1990-10-02";"33"
"poprawny";"41022636727";"kobieta";"1941-02-26";"82"
"poprawny";"84111912605";"kobieta";"1984-11-19";"39"
"poprawny";"83031787708";"kobieta";"1983-03-17";"40"
"poprawny";"53040155809";"kobieta";"1953-04-01";"70"
"poprawny";"27102660220";"kobieta";"1927-10-26";"96"
"poprawny";"04270122068";"kobieta";"2004-07-01";"19"
"poprawny";"93032635306";"kobieta";"1993-03-26";"30"
"poprawny";"52031401321";"kobieta";"1952-03-14";"71"
"poprawny";"45030517221";"kobieta";"1945-03-05";"78"
"poprawny";"52010435163";"kobieta";"1952-01-04";"71"
"poprawny";"57110701046";"kobieta";"1957-11-07";"66"
"poprawny";"05240867761";"kobieta";"2005-04-08";"18"
"poprawny";"31092070408";"kobieta";"1931-09-20";"92"
"poprawny";"40011233323";"kobieta";"1940-01-12";"83"


"""
dane_csv_M = """""poprawny";"54081677833";"mężczyzna";"1954-08-16";"69"
"poprawny";"59080112077";"mężczyzna";"1959-08-01";"64"
"poprawny";"44062213619";"mężczyzna";"1944-06-22";"79"
"poprawny";"65051477016";"mężczyzna";"1965-05-14";"58"
"poprawny";"30072218274";"mężczyzna";"1930-07-22";"93"
"poprawny";"93020152213";"mężczyzna";"1993-02-01";"30"
"poprawny";"36102078016";"mężczyzna";"1936-10-20";"87"
"poprawny";"39112062132";"mężczyzna";"1939-11-20";"84"
"poprawny";"68062632236";"mężczyzna";"1968-06-26";"55"
"poprawny";"71042567514";"mężczyzna";"1971-04-25";"52"
"poprawny";"66070952058";"mężczyzna";"1966-07-09";"57"
"poprawny";"84051721277";"mężczyzna";"1984-05-17";"39"
"poprawny";"45100844433";"mężczyzna";"1945-10-08";"78"
"poprawny";"62032214017";"mężczyzna";"1962-03-22";"61"
"poprawny";"69040822333";"mężczyzna";"1969-04-08";"54"
"poprawny";"98080724639";"mężczyzna";"1998-08-07";"25"
"poprawny";"62022577032";"mężczyzna";"1962-02-25";"61"
"poprawny";"55100768152";"mężczyzna";"1955-10-07";"68"
"poprawny";"85051645550";"mężczyzna";"1985-05-16";"38"
"poprawny";"41071933738";"mężczyzna";"1941-07-19";"82"
"poprawny";"51100304376";"mężczyzna";"1951-10-03";"72"
"poprawny";"59082127332";"mężczyzna";"1959-08-21";"64"
"poprawny";"40062166131";"mężczyzna";"1940-06-21";"83"
"poprawny";"26090114133";"mężczyzna";"1926-09-01";"97"
"poprawny";"77081454433";"mężczyzna";"1977-08-14";"46"
"poprawny";"38060317635";"mężczyzna";"1938-06-03";"85"
"poprawny";"30111731030";"mężczyzna";"1930-11-17";"93"
"poprawny";"96051650875";"mężczyzna";"1996-05-16";"27"
"poprawny";"60111736452";"mężczyzna";"1960-11-17";"63"
"poprawny";"79052174711";"mężczyzna";"1979-05-21";"44"
"poprawny";"64021813814";"mężczyzna";"1964-02-18";"59"
"poprawny";"85092563338";"mężczyzna";"1985-09-25";"38"
"poprawny";"98040483839";"mężczyzna";"1998-04-04";"25"
"poprawny";"69070317418";"mężczyzna";"1969-07-03";"54"
"poprawny";"81060666858";"mężczyzna";"1981-06-06";"42"
"poprawny";"85021266679";"mężczyzna";"1985-02-12";"38"
"poprawny";"85072514073";"mężczyzna";"1985-07-25";"38"
"poprawny";"79081300851";"mężczyzna";"1979-08-13";"44"
"poprawny";"98050716536";"mężczyzna";"1998-05-07";"25"
"poprawny";"72022575671";"mężczyzna";"1972-02-25";"51"
"poprawny";"98111574857";"mężczyzna";"1998-11-15";"25"
"poprawny";"00230171275";"mężczyzna";"2000-03-01";"23"
"poprawny";"78101230011";"mężczyzna";"1978-10-12";"45"
"poprawny";"72101213078";"mężczyzna";"1972-10-12";"51"
"poprawny";"89092030612";"mężczyzna";"1989-09-20";"34"
"poprawny";"80110753072";"mężczyzna";"1980-11-07";"43"
"poprawny";"90052034250";"mężczyzna";"1990-05-20";"33"
"poprawny";"01260117730";"mężczyzna";"2001-06-01";"22"
"poprawny";"98082186734";"mężczyzna";"1998-08-21";"25"
"poprawny";"04260287258";"mężczyzna";"2004-06-02";"19"
"poprawny";"35041238631";"mężczyzna";"1935-04-12";"88"
"poprawny";"90062585030";"mężczyzna";"1990-06-25";"33"
"poprawny";"37011081810";"mężczyzna";"1937-01-10";"86"
"poprawny";"75100512438";"mężczyzna";"1975-10-05";"48"
"poprawny";"85060366237";"mężczyzna";"1985-06-03";"38"
"poprawny";"53022056373";"mężczyzna";"1953-02-20";"70"
"poprawny";"75090912036";"mężczyzna";"1975-09-09";"48"
"poprawny";"02271922618";"mężczyzna";"2002-07-19";"21"
"poprawny";"88030440018";"mężczyzna";"1988-03-04";"35"
"poprawny";"63051333316";"mężczyzna";"1963-05-13";"60"
"poprawny";"96050514154";"mężczyzna";"1996-05-05";"27"
"poprawny";"54031354074";"mężczyzna";"1954-03-13";"69"
"poprawny";"29062142358";"mężczyzna";"1929-06-21";"94"
"poprawny";"47042387610";"mężczyzna";"1947-04-23";"76"
"poprawny";"64091910754";"mężczyzna";"1964-09-19";"59"
"poprawny";"38082641011";"mężczyzna";"1938-08-26";"85"
"poprawny";"44040155418";"mężczyzna";"1944-04-01";"79"
"poprawny";"26110157430";"mężczyzna";"1926-11-01";"97"
"poprawny";"59010228755";"mężczyzna";"1959-01-02";"64"
"poprawny";"62060336550";"mężczyzna";"1962-06-03";"61"
"poprawny";"72011216475";"mężczyzna";"1972-01-12";"51"
"poprawny";"74071003550";"mężczyzna";"1974-07-10";"49"
"poprawny";"50030266556";"mężczyzna";"1950-03-02";"73"
"poprawny";"02302785214";"mężczyzna";"2002-10-27";"21"
"poprawny";"44092527436";"mężczyzna";"1944-09-25";"79"
"poprawny";"29060612370";"mężczyzna";"1929-06-06";"94"
"poprawny";"63040935075";"mężczyzna";"1963-04-09";"60"
"poprawny";"43012374118";"mężczyzna";"1943-01-23";"80"
"poprawny";"68051724058";"mężczyzna";"1968-05-17";"55"
"poprawny";"68092771053";"mężczyzna";"1968-09-27";"55"
"poprawny";"38020804371";"mężczyzna";"1938-02-08";"85"
"poprawny";"74080985674";"mężczyzna";"1974-08-09";"49"
"poprawny";"61072102258";"mężczyzna";"1961-07-21";"62"
"poprawny";"65081674553";"mężczyzna";"1965-08-16";"58"
"poprawny";"90012680716";"mężczyzna";"1990-01-26";"33"
"poprawny";"37111343753";"mężczyzna";"1937-11-13";"86"
"poprawny";"58091268535";"mężczyzna";"1958-09-12";"65"
"poprawny";"98022625055";"mężczyzna";"1998-02-26";"25"
"poprawny";"94101953774";"mężczyzna";"1994-10-19";"29"
"poprawny";"86051107675";"mężczyzna";"1986-05-11";"37"
"poprawny";"64041236271";"mężczyzna";"1964-04-12";"59"
"poprawny";"94050743053";"mężczyzna";"1994-05-07";"29"
"poprawny";"24010103472";"mężczyzna";"1924-01-01";"99"
"poprawny";"65082014071";"mężczyzna";"1965-08-20";"58"
"poprawny";"76101211357";"mężczyzna";"1976-10-12";"47"
"poprawny";"38070921376";"mężczyzna";"1938-07-09";"85"
"poprawny";"40111766330";"mężczyzna";"1940-11-17";"83"
"poprawny";"39062474038";"mężczyzna";"1939-06-24";"84"
"poprawny";"83032637637";"mężczyzna";"1983-03-26";"40"
"poprawny";"24091105358";"mężczyzna";"1924-09-11";"99"

"""
# Odczyt danych z tekstu
dane_io = StringIO(dane_csv_K)
reader = csv.reader(dane_io, delimiter=';')

# Inicjalizacja list dla numerów PESEL i dat urodzenia
numery_pesel_K = []
daty_urodzenia_K = []

# Przetwarzanie danych i dodawanie do odpowiednich list
for row in reader:
    if row:  # Sprawdzenie, czy linia jest niepusta
        numery_pesel_K.append(row[1])
        daty_urodzenia_K.append(row[3])

dane_io = StringIO(dane_csv_M)
reader = csv.reader(dane_io, delimiter=';')

# Inicjalizacja list dla numerów PESEL i dat urodzenia
numery_pesel_M= []
daty_urodzenia_M = []

# Przetwarzanie danych i dodawanie do odpowiednich list
for row in reader:
    if row:  # Sprawdzenie, czy linia jest niepusta
        numery_pesel_M.append(row[1])
        daty_urodzenia_M.append(row[3])


# Wywołanie funkcji do zamiany danych
zamien_dane(dane_nazwiskowe, dane_osoboweK, dane_osoboweM, numery_pesel_M, numery_pesel_K, daty_urodzenia_M, daty_urodzenia_K)
