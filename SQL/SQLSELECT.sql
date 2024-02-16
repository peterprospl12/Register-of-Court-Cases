--	Kierownictwo s¹du chce sporz¹dziæ zestawienie dotycz¹ce sêdziów i
--	liczby przeprowadzonych przez nich spraw. Kierownictwo chce wiedzieæ,
--	ile spraw rozpoczêtych po 31.12.2022 zosta³o zakoñczone przed
--	01.01.2024. Wynik powinien byæ w formie: sêdzia | iloœæ zakoñczonych
--	spraw w danym okresie. 

-- Query do sprawdzenia 
--select * from SÊDZIOWIE_SPRAWY join sprawy sp on Sygnatura_sprawy = sp.Sygnatura

SELECT
    s.ID_Sêdziego,
	os.Imie,
	os.Nazwisko,
    COUNT(*) AS Iloœæ_zakoñczonych_spraw
FROM
    SÊDZIOWIE_SPRAWY s
INNER JOIN
    SPRAWY sp ON s.Sygnatura_sprawy = sp.Sygnatura
INNER JOIN
	OSOBY os ON s.ID_Sêdziego = os.ID_Osoby
WHERE
	-- ze wzglêdu na brak spraw rozpoczêtych po 31.12.2022 i zakoñczonycz przed 01.01.2024 zmieni³em wymiar czasowy
    sp.Data_rozpoczêcia > '2014-12-31'
    AND sp.Data_zakoñczenia < '2016-01-01'
GROUP BY
    s.ID_Sêdziego,
    os.Imie,
    os.Nazwisko;



---------------------------------------------------------------------------------------------------------------

--	Kierownictwo s¹du chce zbadaæ w jakim okresie wp³ywa najwiêcej
--	nowych spraw. Maj¹c dane o sprawach z 2023 roku, stwórz zestawienie w
--	postaci: miesi¹c | iloœæ rozpoczêtych spraw w danym miesi¹cu.

-- query do sprawdzania 	
-- select * from sprawy WHERE Data_wniesienia >= '2015-01-01' AND Data_wniesienia <= '2015-12-31'

-- ze wzglêdu na brak spraw w 2023 roku zmieni³em troche przedzia³ czasowy
SELECT
    YEAR(s.data_wniesienia) AS Rok,
    FORMAT(S.data_wniesienia, 'MMMM', 'pl-pl') AS Miesi¹c,
    COUNT(*) AS Iloœæ_wniesionych_spraw
FROM
    SPRAWY s
WHERE 
    s.Data_wniesienia >= '2015-01-01'
    AND s.Data_wniesienia <= '2015-12-31'
GROUP BY 
    YEAR(s.data_wniesienia),
    FORMAT(s.data_wniesienia, 'MMMM', 'pl-pl')
ORDER BY
	YEAR(s.data_wniesienia) DESC,
    MIN(MONTH(s.data_wniesienia));  






---------------------------------------------------------------------------------------------------------------




--	Kierownictwo chce wyszukaæ listê spraw osoby o nazwisku: X – nie zna
--	innych informacji o danej osobie. Stwórz zestawienie wyœwietlaj¹ce
--	podstawowe informacje o sprawach dla znalezionej/znalezionych osób.

SELECT
	os.ID_Osoby as ID_Osoby,
    os.Imie AS Imie,
    os.Nazwisko AS Nazwisko,
    os.PESEL AS PESEL,
    COALESCE(sp.Sygnatura, 'Brak informacji' ) AS Sygnatura,
    COALESCE(sp.Opis_sprawy, 'Brak informacji') AS Opis_sprawy,
	COALESCE(sp.Status_sprawy, 'Brak informacji') AS Status_sprawy,
	CASE
        WHEN ss.ID_Sêdziego IS NOT NULL THEN 'Sêdzia'
        WHEN zn.ID_Œwiadka IS NOT NULL THEN 'Œwiadek' 
		WHEN rz.ID_Powoda IS NOT NULL THEN rz.Rodzaj_powoda
        WHEN br.ID_Pozwanego IS NOT NULL THEN 'Pozwany' 
        WHEN pm.ID_Pe³nomocnika IS NOT NULL THEN 'Pe³nomocnik'

        ELSE 'Brak informacji o udziale'
    END AS Udzia³_w_sprawie
FROM
    OSOBY os
LEFT JOIN
    SÊDZIOWIE_SPRAWY ss ON os.ID_Osoby = ss.ID_Sêdziego
LEFT JOIN
    ZEZNAJE zn ON os.ID_Osoby = zn.ID_Œwiadka
LEFT JOIN
    ROZPOCZYNA rz ON os.ID_Osoby = rz.ID_Powoda
LEFT JOIN
    BRONI_SIÊ_W br ON os.ID_Osoby = br.ID_Pozwanego
LEFT JOIN
	PE£NOMOCNICY pm ON os.ID_Osoby = pm.ID_Pe³nomocnika
LEFT JOIN
	ROZPOCZYNA rza ON rza.ID_Rozpoczynania = pm.ID_Rozpoczynajacego
LEFT JOIN
	BRONI_SIÊ_W brw ON brw.ID_Bronienia_siê = pm.ID_Broniacego_sie
LEFT JOIN
    SPRAWY sp ON sp.Sygnatura = COALESCE(ss.Sygnatura_sprawy, 
	zn.Sygnatura_sprawy, rz.Sygnatura_sprawy, rza.Sygnatura_sprawy, br.Sygnatura_sprawy,
	brw.Sygnatura_sprawy
	)
WHERE
    os.Nazwisko = 'Cieœlak';






---------------------------------------------------------------------------------------------------------------





-- Chcesz nagrodziæ œwiadka koronnego. 
-- ZnajdŸ osobê, która zeznawa³a najwiêksz¹ iloœæ razy w
-- sprawach, które s¹ poufne

-- query do sprawdzania
/*
select * from SPRAWY where poufne = 1
select * from ZEZNAJE
*/

SELECT
    zz.ID_Œwiadka,
    os.Imie as Imie,
    os.Nazwisko as Nazwisko,
    os.Data_urodzenia as Data_urodzenia,
    COUNT(*) as Ilosc_Zeznan
FROM
    ZEZNAJE zz
JOIN
	SPRAWY s ON zz.Sygnatura_sprawy = s.Sygnatura AND s.Poufne = 1
JOIN
    OSOBY os ON zz.ID_Œwiadka = os.ID_Osoby
GROUP BY
    zz.ID_Œwiadka, os.Imie, os.Nazwisko, os.Data_urodzenia
ORDER BY
    COUNT(zz.ID_Œwiadka) DESC;





---------------------------------------------------------------------------------------------------------------





-- Chcesz znaleŸæ osobê, która dba o przestrzeganie prawa. 
-- ZnajdŸ osobê, która rozpoczê³a
-- najwiêksz¹ iloœæ spraw, w których zeznawa³a wiêcej ni¿ jedna osoba.

-- query do sprawdzenia
/* 
select * from ZEZNAJE
select * from ROZPOCZYNA
UPDATE ROZPOCZYNA
set Sygnatura_sprawy = 'I ACa 910/13'
where ID_Powoda = 66
UPDATE ZEZNAJE
SET Sygnatura_sprawy = 'V ACa 267/13'
WHERE Sygnatura_sprawy IN ('V ACa 276/16', 'V ACa 275/14', 'V ACa 272/13');

UPDATE ZEZNAJE
SET Sygnatura_sprawy = 'III APz 27/17'
WHERE Sygnatura_sprawy IN ('III APz 13/20', 'III AUa 904/12');

UPDATE ZEZNAJE
SET Sygnatura_sprawy = 'III APz 32/12'
WHERE Sygnatura_sprawy IN ('III AUa 1414/11', 'III AUa 1438/11');



select*
from ROZPOCZYNA

select*
from zeznaje


SELECT
	sygnatura_sprawy as sygnatura,
	COUNT(ID_Œwiadka) as Iloœæ
FROM ZEZNAJE zz
GROUP BY Sygnatura_sprawy
having
	COUNT(ID_Œwiadka) > 0;
	
*/

SELECT
    rz.ID_Powoda as Powod,
    os.imie as Imie,
    os.Nazwisko as Nazwisko,
    COUNT(DISTINCT rz.Sygnatura_sprawy) as Iloœæ
FROM
    ROZPOCZYNA rz
JOIN
    OSOBY os ON rz.ID_Powoda = os.ID_Osoby
JOIN
    (
        SELECT
            zz.Sygnatura_sprawy,
            COUNT(DISTINCT zz.ID_Œwiadka) as IloœæSwiadkow
        FROM
            ZEZNAJE zz
        GROUP BY
            zz.Sygnatura_sprawy
        HAVING
            COUNT(DISTINCT zz.ID_Œwiadka) > 1
    ) as SwiadkowieSpraw ON rz.Sygnatura_sprawy = SwiadkowieSpraw.Sygnatura_sprawy
GROUP BY
    rz.ID_Powoda, os.imie, os.Nazwisko
ORDER BY
    Iloœæ DESC;

	 





---------------------------------------------------------------------------------------------------------------






--	W£ASNE ZAPYTANIE
--  Minister Sprawiedliwoœci potrzebuje od s¹du danych przedstawiaj¹cych ile spraw zosta³o zakoñczone, 
--  a ile jest w toku od pocz¹tku istnienia s¹du na ka¿dym wydziale.
--  Przedstaw te informacje w formacie		Wydzia³		|	Sprawy w toku	|	Sprawy zakoñczone	|	£¹czna iloœc spraw

-- Query do sprawdzenia
/*

select * from SÊDZIOWIE_SPRAWY

drop view Sprawy_na_wydzia³ach
*/

CREATE VIEW Sprawy_na_wydzia³ach AS
SELECT
    W.Nazwa AS Wydzia³,
    COUNT(CASE WHEN S.Data_zakoñczenia IS NULL THEN 1 END) AS Sprawy_w_toku,
    COUNT(CASE WHEN S.Data_zakoñczenia IS NOT NULL THEN 1 END) AS Sprawy_zakoñczone,
	COUNT(*) AS £¹czna_iloœæ_spraw
FROM
    WYDZIA£Y W
LEFT JOIN
    SÊDZIOWIE Sêdzia ON W.Nazwa = Sêdzia.Wydzia³
LEFT JOIN
    SÊDZIOWIE_SPRAWY SêdziaSprawa ON Sêdzia.ID_Sêdziego = SêdziaSprawa.ID_Sêdziego
JOIN
    SPRAWY S ON SêdziaSprawa.Sygnatura_sprawy = S.Sygnatura
GROUP BY
    W.Nazwa;

SELECT*
FROM Sprawy_na_wydzia³ach





---------------------------------------------------------------------------------------------------------------




-- W³asne zapytanie
-- Kierownik s¹du potrzebuje raportu na temat zarejestrowanych osób w s¹dzie. 
-- Przedstaw ile osób zajmuje dan¹ role

SELECT
	COUNT(DISTINCT os.ID_Osoby)			AS Liczba_osób,
	COUNT(DISTINCT r.ID_Powoda)			AS Powodzi,
	(
		SELECT COUNT(DISTINCT r_sub.ID_Powoda)
		FROM ROZPOCZYNA r_sub
		WHERE r_sub.ID_Powoda NOT IN (SELECT ID_Prokuratora FROM PROKURATORZY)
	)									AS Liczba_powodow_bez_prokuratorow,
	
	COUNT(DISTINCT z.ID_Œwiadka)		AS Œwiadkowie,
	COUNT(DISTINCT bs.ID_Pozwanego)		AS Pozwani,
	COUNT(DISTINCT pm.ID_Pe³nomocnika)	AS Pe³nomocnicy,
	
	(
		SELECT COUNT(DISTINCT p_sub.ID_Pe³nomocnika)
		FROM PE£NOMOCNICY p_sub
		WHERE p_sub.ID_Pe³nomocnika NOT IN (SELECT ID_Adwokata FROM ADWOKACI)
	)									AS Liczba_pe³nomocników_bez_adwokatów,

	COUNT(DISTINCT mnp.Numer_dyplomu)	AS Liczba_Magistr_nauk_prawniczych,
	COUNT(DISTINCT a.ID_Adwokata)		AS Adwokaci,
	COUNT(DISTINCT p.ID_Prokuratora)	AS Prokuratorzy,
	COUNT(DISTINCT s.ID_Sêdziego)		AS Sêdziowie,

	COUNT(DISTINCT os.ID_Osoby) - 
	    (
		SELECT COUNT(DISTINCT r_sub.ID_Powoda)
		FROM ROZPOCZYNA r_sub
		WHERE r_sub.ID_Powoda NOT IN (SELECT ID_Prokuratora FROM PROKURATORZY)
		) 
		-
	    COUNT(DISTINCT z.ID_Œwiadka) - 
	    COUNT(DISTINCT bs.ID_Pozwanego) - 
	    COUNT(DISTINCT mnp.Numer_dyplomu) -
		(
		SELECT COUNT(DISTINCT p_sub.ID_Pe³nomocnika)
		FROM PE£NOMOCNICY p_sub
		WHERE p_sub.ID_Pe³nomocnika NOT IN (SELECT ID_Adwokata FROM ADWOKACI)
		)								AS Liczba_osób_bez_roli

FROM
	OSOBY os
CROSS JOIN
	MAGISTROWIE_NAUK_PRAWNICZYCH mnp
LEFT JOIN
	ADWOKACI a ON os.ID_Osoby = a.ID_Adwokata
LEFT JOIN
	PROKURATORZY p ON os.ID_Osoby = p.ID_Prokuratora
LEFT JOIN
	SÊDZIOWIE s ON os.ID_Osoby = s.ID_Sêdziego
LEFT JOIN
	ROZPOCZYNA r ON os.ID_Osoby = r.ID_Powoda
LEFT JOIN
	ZEZNAJE z ON os.ID_Osoby = z.ID_Œwiadka
LEFT JOIN
	BRONI_SIÊ_W bs ON os.ID_Osoby = bs.ID_Pozwanego
LEFT JOIN
	PE£NOMOCNICY pm ON os.ID_Osoby = pm.ID_Pe³nomocnika;

	