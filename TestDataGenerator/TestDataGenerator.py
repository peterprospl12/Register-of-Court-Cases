import csv
import sqlite3
from io import StringIO
import random
from datetime import datetime, timedelta


def zamien_dane(dane_nazwiskowe, dane_osoboweK, dane_osoboweM, numery_pesel_M, numery_pesel_K, daty_urodzenia_M, daty_urodzenia_K):
    uniwersytety = [
        'Uniwersytet Gdański', 'Uniwersytet Łódzki', 'Uniwersytet Jagielloński', 'Uniwersytet Poznański',
        'Uniwersytet Zielonogórski', 'Uniwersytet Warszawski', 'Uniwersytet Bydgoski', 'Uniwersytet Lubliński',
        'Uniwersytet Wrocławski', 'Uniwersytet Białystocki', 'Uniwersytet Śląski', 'Uniwersytet Opolski', 'Uniwersytet Rzeszowski',
        'Uniwersytet Warmińsko-Mazurski', 'Uniwersytet Kazimierza Wielkiego', 'Uniwersytet Mikołaja Kopernika',
    ]

    for _ in range(80):
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
        # Konwertuj z powrotem na string
        nowa_data_urodzenia = nowa_data.strftime("%Y-%m-%d")
        specjalizacjaaa = random.randint(1,21)
        nowa_data_mian = data_urodzenia_datetime + timedelta(days=365.25 * 25)
        # Konwertuj z powrotem na string
        nowa_data_urodzenia_mian = nowa_data_mian.strftime("%Y-%m-%d")

        liczba_spraw = random.randint(1, 300)
        numer_dyplomu = random.randint(1, 1000000)

        query = f'''
        INSERT INTO OSOBY (Imie, Nazwisko, PESEL, Data_urodzenia)
        VALUES ('{imie}', '{nazwisko}', '{pesel}', '{data_urodzenia}');
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

dane_csv_K = """"poprawny";"33110801160";"kobieta";"1933-11-08";"90"
"poprawny";"39032547326";"kobieta";"1939-03-25";"84"
"poprawny";"48080317544";"kobieta";"1948-08-03";"75"
"poprawny";"48101628024";"kobieta";"1948-10-16";"75"
"poprawny";"40070686807";"kobieta";"1940-07-06";"83"
"poprawny";"36021963448";"kobieta";"1936-02-19";"87"
"poprawny";"34041354602";"kobieta";"1934-04-13";"89"
"poprawny";"53021170029";"kobieta";"1953-02-11";"70"
"poprawny";"94091767209";"kobieta";"1994-09-17";"29"
"poprawny";"84092465442";"kobieta";"1984-09-24";"39"
"poprawny";"79111502020";"kobieta";"1979-11-15";"44"
"poprawny";"27080255108";"kobieta";"1927-08-02";"96"
"poprawny";"82041982466";"kobieta";"1982-04-19";"41"
"poprawny";"32021845562";"kobieta";"1932-02-18";"91"
"poprawny";"41052324724";"kobieta";"1941-05-23";"82"
"poprawny";"71062554107";"kobieta";"1971-06-25";"52"
"poprawny";"48061414200";"kobieta";"1948-06-14";"75"
"poprawny";"34050155069";"kobieta";"1934-05-01";"89"
"poprawny";"34020752126";"kobieta";"1934-02-07";"89"
"poprawny";"36022621565";"kobieta";"1936-02-26";"87"
"poprawny";"01281462848";"kobieta";"2001-08-14";"22"
"poprawny";"25032552402";"kobieta";"1925-03-25";"98"
"poprawny";"32012236726";"kobieta";"1932-01-22";"91"
"poprawny";"34070177168";"kobieta";"1934-07-01";"89"
"poprawny";"63021908540";"kobieta";"1963-02-19";"60"
"poprawny";"59080547260";"kobieta";"1959-08-05";"64"
"poprawny";"39080328041";"kobieta";"1939-08-03";"84"
"poprawny";"93010466005";"kobieta";"1993-01-04";"30"
"poprawny";"30060313161";"kobieta";"1930-06-03";"93"
"poprawny";"81042525045";"kobieta";"1981-04-25";"42"
"poprawny";"92061972464";"kobieta";"1992-06-19";"31"
"poprawny";"75071014001";"kobieta";"1975-07-10";"48"
"poprawny";"67092675442";"kobieta";"1967-09-26";"56"
"poprawny";"24112175100";"kobieta";"1924-11-21";"99"
"poprawny";"45020881127";"kobieta";"1945-02-08";"78"
"poprawny";"04222061102";"kobieta";"2004-02-20";"19"
"poprawny";"32022788606";"kobieta";"1932-02-27";"91"
"poprawny";"79111736805";"kobieta";"1979-11-17";"44"
"poprawny";"76061601225";"kobieta";"1976-06-16";"47"
"poprawny";"61030122146";"kobieta";"1961-03-01";"62"
"poprawny";"24050580703";"kobieta";"1924-05-05";"99"
"poprawny";"59050153268";"kobieta";"1959-05-01";"64"
"poprawny";"03292030829";"kobieta";"2003-09-20";"20"
"poprawny";"76110707623";"kobieta";"1976-11-07";"47"
"poprawny";"75111580604";"kobieta";"1975-11-15";"48"
"poprawny";"60051576208";"kobieta";"1960-05-15";"63"
"poprawny";"01290787361";"kobieta";"2001-09-07";"22"
"poprawny";"00282404523";"kobieta";"2000-08-24";"23"
"poprawny";"85091451146";"kobieta";"1985-09-14";"38"
"poprawny";"28111777363";"kobieta";"1928-11-17";"95"
"poprawny";"32040234163";"kobieta";"1932-04-02";"91"
"poprawny";"69052286264";"kobieta";"1969-05-22";"54"
"poprawny";"71071373827";"kobieta";"1971-07-13";"52"
"poprawny";"36110368321";"kobieta";"1936-11-03";"87"
"poprawny";"76031561421";"kobieta";"1976-03-15";"47"
"poprawny";"86020324441";"kobieta";"1986-02-03";"37"
"poprawny";"29060151765";"kobieta";"1929-06-01";"94"
"poprawny";"01210514600";"kobieta";"2001-01-05";"22"
"poprawny";"96060284421";"kobieta";"1996-06-02";"27"
"poprawny";"84030565322";"kobieta";"1984-03-05";"39"
"poprawny";"77051243821";"kobieta";"1977-05-12";"46"
"poprawny";"96011950667";"kobieta";"1996-01-19";"27"
"poprawny";"43072377346";"kobieta";"1943-07-23";"80"
"poprawny";"46030358104";"kobieta";"1946-03-03";"77"
"poprawny";"53101721769";"kobieta";"1953-10-17";"70"
"poprawny";"60112522429";"kobieta";"1960-11-25";"63"
"poprawny";"95112585521";"kobieta";"1995-11-25";"28"
"poprawny";"77082235143";"kobieta";"1977-08-22";"46"
"poprawny";"53090423200";"kobieta";"1953-09-04";"70"
"poprawny";"32100736022";"kobieta";"1932-10-07";"91"
"poprawny";"97092648849";"kobieta";"1997-09-26";"26"
"poprawny";"55100646447";"kobieta";"1955-10-06";"68"
"poprawny";"56050664341";"kobieta";"1956-05-06";"67"
"poprawny";"05272556569";"kobieta";"2005-07-25";"18"
"poprawny";"41100906609";"kobieta";"1941-10-09";"82"
"poprawny";"55112408404";"kobieta";"1955-11-24";"68"
"poprawny";"01240487747";"kobieta";"2001-04-04";"22"
"poprawny";"55110768160";"kobieta";"1955-11-07";"68"
"poprawny";"80111747744";"kobieta";"1980-11-17";"43"
"poprawny";"27011944242";"kobieta";"1927-01-19";"96"
"poprawny";"29032144821";"kobieta";"1929-03-21";"94"
"poprawny";"36061973841";"kobieta";"1936-06-19";"87"
"poprawny";"32071787328";"kobieta";"1932-07-17";"91"
"poprawny";"88112700702";"kobieta";"1988-11-27";"35"
"poprawny";"76012733807";"kobieta";"1976-01-27";"47"
"poprawny";"90012323000";"kobieta";"1990-01-23";"33"
"poprawny";"71040402004";"kobieta";"1971-04-04";"52"
"poprawny";"99040980043";"kobieta";"1999-04-09";"24"
"poprawny";"35112045063";"kobieta";"1935-11-20";"88"
"poprawny";"74031248663";"kobieta";"1974-03-12";"49"
"poprawny";"73061203402";"kobieta";"1973-06-12";"50"
"poprawny";"62072428562";"kobieta";"1962-07-24";"61"
"poprawny";"56112310140";"kobieta";"1956-11-23";"67"
"poprawny";"91060847009";"kobieta";"1991-06-08";"32"
"poprawny";"99041623749";"kobieta";"1999-04-16";"24"
"poprawny";"65100506720";"kobieta";"1965-10-05";"58"
"poprawny";"91032704866";"kobieta";"1991-03-27";"32"
"poprawny";"00302707126";"kobieta";"2000-10-27";"23"
"poprawny";"42061002229";"kobieta";"1942-06-10";"81"
"poprawny";"62081173563";"kobieta";"1962-08-11";"61"


"""
dane_csv_M = """"poprawny";"81070333436";"mężczyzna";"1981-07-03";"42"
"poprawny";"88062545578";"mężczyzna";"1988-06-25";"35"
"poprawny";"57091862152";"mężczyzna";"1957-09-18";"66"
"poprawny";"01271670132";"mężczyzna";"2001-07-16";"22"
"poprawny";"34092116350";"mężczyzna";"1934-09-21";"89"
"poprawny";"67092721471";"mężczyzna";"1967-09-27";"56"
"poprawny";"42020942078";"mężczyzna";"1942-02-09";"81"
"poprawny";"30040402537";"mężczyzna";"1930-04-04";"93"
"poprawny";"68071955436";"mężczyzna";"1968-07-19";"55"
"poprawny";"85041064415";"mężczyzna";"1985-04-10";"38"
"poprawny";"04241628577";"mężczyzna";"2004-04-16";"19"
"poprawny";"40022740113";"mężczyzna";"1940-02-27";"83"
"poprawny";"62101703354";"mężczyzna";"1962-10-17";"61"
"poprawny";"90111485711";"mężczyzna";"1990-11-14";"33"
"poprawny";"46100514171";"mężczyzna";"1946-10-05";"77"
"poprawny";"74051051650";"mężczyzna";"1974-05-10";"49"
"poprawny";"93112037673";"mężczyzna";"1993-11-20";"30"
"poprawny";"95022026817";"mężczyzna";"1995-02-20";"28"
"poprawny";"64040364634";"mężczyzna";"1964-04-03";"59"
"poprawny";"50041226271";"mężczyzna";"1950-04-12";"73"
"poprawny";"63081012632";"mężczyzna";"1963-08-10";"60"
"poprawny";"60051632230";"mężczyzna";"1960-05-16";"63"
"poprawny";"00212123353";"mężczyzna";"2000-01-21";"23"
"poprawny";"90101050251";"mężczyzna";"1990-10-10";"33"
"poprawny";"53032634712";"mężczyzna";"1953-03-26";"70"
"poprawny";"71040651835";"mężczyzna";"1971-04-06";"52"
"poprawny";"78032187732";"mężczyzna";"1978-03-21";"45"
"poprawny";"72060160657";"mężczyzna";"1972-06-01";"51"
"poprawny";"65051015612";"mężczyzna";"1965-05-10";"58"
"poprawny";"45052452214";"mężczyzna";"1945-05-24";"78"
"poprawny";"56011062717";"mężczyzna";"1956-01-10";"67"
"poprawny";"38031070037";"mężczyzna";"1938-03-10";"85"
"poprawny";"92081867812";"mężczyzna";"1992-08-18";"31"
"poprawny";"85050435530";"mężczyzna";"1985-05-04";"38"
"poprawny";"57012447277";"mężczyzna";"1957-01-24";"66"
"poprawny";"53022683470";"mężczyzna";"1953-02-26";"70"
"poprawny";"82021414255";"mężczyzna";"1982-02-14";"41"
"poprawny";"91012126532";"mężczyzna";"1991-01-21";"32"
"poprawny";"43111261454";"mężczyzna";"1943-11-12";"80"
"poprawny";"26011025018";"mężczyzna";"1926-01-10";"97"
"poprawny";"79010113130";"mężczyzna";"1979-01-01";"44"
"poprawny";"86011215471";"mężczyzna";"1986-01-12";"37"
"poprawny";"77112042039";"mężczyzna";"1977-11-20";"46"
"poprawny";"97110114510";"mężczyzna";"1997-11-01";"26"
"poprawny";"46060303459";"mężczyzna";"1946-06-03";"77"
"poprawny";"76072410810";"mężczyzna";"1976-07-24";"47"
"poprawny";"91060641412";"mężczyzna";"1991-06-06";"32"
"poprawny";"71062380559";"mężczyzna";"1971-06-23";"52"
"poprawny";"43052511115";"mężczyzna";"1943-05-25";"80"
"poprawny";"78011300512";"mężczyzna";"1978-01-13";"45"
"poprawny";"87032377773";"mężczyzna";"1987-03-23";"36"
"poprawny";"79051344656";"mężczyzna";"1979-05-13";"44"
"poprawny";"57032430453";"mężczyzna";"1957-03-24";"66"
"poprawny";"83091640531";"mężczyzna";"1983-09-16";"40"
"poprawny";"95011560214";"mężczyzna";"1995-01-15";"28"
"poprawny";"74092015075";"mężczyzna";"1974-09-20";"49"
"poprawny";"67081408556";"mężczyzna";"1967-08-14";"56"
"poprawny";"84112105158";"mężczyzna";"1984-11-21";"39"
"poprawny";"41091967818";"mężczyzna";"1941-09-19";"82"
"poprawny";"39012381456";"mężczyzna";"1939-01-23";"84"
"poprawny";"75070501810";"mężczyzna";"1975-07-05";"48"
"poprawny";"38010473839";"mężczyzna";"1938-01-04";"85"
"poprawny";"65112322857";"mężczyzna";"1965-11-23";"58"
"poprawny";"69081906232";"mężczyzna";"1969-08-19";"54"
"poprawny";"65052652575";"mężczyzna";"1965-05-26";"58"
"poprawny";"02290211618";"mężczyzna";"2002-09-02";"21"
"poprawny";"87091404032";"mężczyzna";"1987-09-14";"36"
"poprawny";"77011730376";"mężczyzna";"1977-01-17";"46"
"poprawny";"89111740535";"mężczyzna";"1989-11-17";"34"
"poprawny";"44060662538";"mężczyzna";"1944-06-06";"79"
"poprawny";"57111805374";"mężczyzna";"1957-11-18";"66"
"poprawny";"73010826638";"mężczyzna";"1973-01-08";"50"
"poprawny";"92081248419";"mężczyzna";"1992-08-12";"31"
"poprawny";"47050925738";"mężczyzna";"1947-05-09";"76"
"poprawny";"43081722056";"mężczyzna";"1943-08-17";"80"
"poprawny";"73050478655";"mężczyzna";"1973-05-04";"50"
"poprawny";"51102082474";"mężczyzna";"1951-10-20";"72"
"poprawny";"83070722816";"mężczyzna";"1983-07-07";"40"
"poprawny";"84042323156";"mężczyzna";"1984-04-23";"39"
"poprawny";"85110703218";"mężczyzna";"1985-11-07";"38"
"poprawny";"84101618616";"mężczyzna";"1984-10-16";"39"
"poprawny";"80061373811";"mężczyzna";"1980-06-13";"43"
"poprawny";"40110532433";"mężczyzna";"1940-11-05";"83"
"poprawny";"45051760514";"mężczyzna";"1945-05-17";"78"
"poprawny";"90031526017";"mężczyzna";"1990-03-15";"33"
"poprawny";"86100330359";"mężczyzna";"1986-10-03";"37"
"poprawny";"25050718350";"mężczyzna";"1925-05-07";"98"
"poprawny";"33071907653";"mężczyzna";"1933-07-19";"90"
"poprawny";"66021751514";"mężczyzna";"1966-02-17";"57"
"poprawny";"72110425772";"mężczyzna";"1972-11-04";"51"
"poprawny";"24020450117";"mężczyzna";"1924-02-04";"99"
"poprawny";"28071728515";"mężczyzna";"1928-07-17";"95"
"poprawny";"52110367634";"mężczyzna";"1952-11-03";"71"
"poprawny";"83060478259";"mężczyzna";"1983-06-04";"40"
"poprawny";"55081205174";"mężczyzna";"1955-08-12";"68"
"poprawny";"51012742813";"mężczyzna";"1951-01-27";"72"
"poprawny";"47081400079";"mężczyzna";"1947-08-14";"76"
"poprawny";"34020635638";"mężczyzna";"1934-02-06";"89"
"poprawny";"69010667418";"mężczyzna";"1969-01-06";"54"
"poprawny";"50041417136";"mężczyzna";"1950-04-14";"73"

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
