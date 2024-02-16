--	Kierownictwo s�du chce sporz�dzi� zestawienie dotycz�ce s�dzi�w i
--	liczby przeprowadzonych przez nich spraw. Kierownictwo chce wiedzie�,
--	ile spraw rozpocz�tych po 31.12.2022 zosta�o zako�czone przed
--	01.01.2024. Wynik powinien by� w formie: s�dzia | ilo�� zako�czonych
--	spraw w danym okresie. 

-- Query do sprawdzenia 
--select * from S�DZIOWIE_SPRAWY join sprawy sp on Sygnatura_sprawy = sp.Sygnatura

SELECT
    s.ID_S�dziego,
	os.Imie,
	os.Nazwisko,
    COUNT(*) AS Ilo��_zako�czonych_spraw
FROM
    S�DZIOWIE_SPRAWY s
INNER JOIN
    SPRAWY sp ON s.Sygnatura_sprawy = sp.Sygnatura
INNER JOIN
	OSOBY os ON s.ID_S�dziego = os.ID_Osoby
WHERE
	-- ze wzgl�du na brak spraw rozpocz�tych po 31.12.2022 i zako�czonycz przed 01.01.2024 zmieni�em wymiar czasowy
    sp.Data_rozpocz�cia > '2014-12-31'
    AND sp.Data_zako�czenia < '2016-01-01'
GROUP BY
    s.ID_S�dziego,
    os.Imie,
    os.Nazwisko;



---------------------------------------------------------------------------------------------------------------

--	Kierownictwo s�du chce zbada� w jakim okresie wp�ywa najwi�cej
--	nowych spraw. Maj�c dane o sprawach z 2023 roku, stw�rz zestawienie w
--	postaci: miesi�c | ilo�� rozpocz�tych spraw w danym miesi�cu.

-- query do sprawdzania 	
-- select * from sprawy WHERE Data_wniesienia >= '2015-01-01' AND Data_wniesienia <= '2015-12-31'

-- ze wzgl�du na brak spraw w 2023 roku zmieni�em troche przedzia� czasowy
SELECT
    YEAR(s.data_wniesienia) AS Rok,
    FORMAT(S.data_wniesienia, 'MMMM', 'pl-pl') AS Miesi�c,
    COUNT(*) AS Ilo��_wniesionych_spraw
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




--	Kierownictwo chce wyszuka� list� spraw osoby o nazwisku: X � nie zna
--	innych informacji o danej osobie. Stw�rz zestawienie wy�wietlaj�ce
--	podstawowe informacje o sprawach dla znalezionej/znalezionych os�b.

SELECT
	os.ID_Osoby as ID_Osoby,
    os.Imie AS Imie,
    os.Nazwisko AS Nazwisko,
    os.PESEL AS PESEL,
    COALESCE(sp.Sygnatura, 'Brak informacji' ) AS Sygnatura,
    COALESCE(sp.Opis_sprawy, 'Brak informacji') AS Opis_sprawy,
	COALESCE(sp.Status_sprawy, 'Brak informacji') AS Status_sprawy,
	CASE
        WHEN ss.ID_S�dziego IS NOT NULL THEN 'S�dzia'
        WHEN zn.ID_�wiadka IS NOT NULL THEN '�wiadek' 
		WHEN rz.ID_Powoda IS NOT NULL THEN rz.Rodzaj_powoda
        WHEN br.ID_Pozwanego IS NOT NULL THEN 'Pozwany' 
        WHEN pm.ID_Pe�nomocnika IS NOT NULL THEN 'Pe�nomocnik'

        ELSE 'Brak informacji o udziale'
    END AS Udzia�_w_sprawie
FROM
    OSOBY os
LEFT JOIN
    S�DZIOWIE_SPRAWY ss ON os.ID_Osoby = ss.ID_S�dziego
LEFT JOIN
    ZEZNAJE zn ON os.ID_Osoby = zn.ID_�wiadka
LEFT JOIN
    ROZPOCZYNA rz ON os.ID_Osoby = rz.ID_Powoda
LEFT JOIN
    BRONI_SI�_W br ON os.ID_Osoby = br.ID_Pozwanego
LEFT JOIN
	PE�NOMOCNICY pm ON os.ID_Osoby = pm.ID_Pe�nomocnika
LEFT JOIN
	ROZPOCZYNA rza ON rza.ID_Rozpoczynania = pm.ID_Rozpoczynajacego
LEFT JOIN
	BRONI_SI�_W brw ON brw.ID_Bronienia_si� = pm.ID_Broniacego_sie
LEFT JOIN
    SPRAWY sp ON sp.Sygnatura = COALESCE(ss.Sygnatura_sprawy, 
	zn.Sygnatura_sprawy, rz.Sygnatura_sprawy, rza.Sygnatura_sprawy, br.Sygnatura_sprawy,
	brw.Sygnatura_sprawy
	)
WHERE
    os.Nazwisko = 'Cie�lak';






---------------------------------------------------------------------------------------------------------------





-- Chcesz nagrodzi� �wiadka koronnego. 
-- Znajd� osob�, kt�ra zeznawa�a najwi�ksz� ilo�� razy w
-- sprawach, kt�re s� poufne

-- query do sprawdzania
/*
select * from SPRAWY where poufne = 1
select * from ZEZNAJE
*/

SELECT
    zz.ID_�wiadka,
    os.Imie as Imie,
    os.Nazwisko as Nazwisko,
    os.Data_urodzenia as Data_urodzenia,
    COUNT(*) as Ilosc_Zeznan
FROM
    ZEZNAJE zz
JOIN
	SPRAWY s ON zz.Sygnatura_sprawy = s.Sygnatura AND s.Poufne = 1
JOIN
    OSOBY os ON zz.ID_�wiadka = os.ID_Osoby
GROUP BY
    zz.ID_�wiadka, os.Imie, os.Nazwisko, os.Data_urodzenia
ORDER BY
    COUNT(zz.ID_�wiadka) DESC;





---------------------------------------------------------------------------------------------------------------





-- Chcesz znale�� osob�, kt�ra dba o przestrzeganie prawa. 
-- Znajd� osob�, kt�ra rozpocz�a
-- najwi�ksz� ilo�� spraw, w kt�rych zeznawa�a wi�cej ni� jedna osoba.

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
	COUNT(ID_�wiadka) as Ilo��
FROM ZEZNAJE zz
GROUP BY Sygnatura_sprawy
having
	COUNT(ID_�wiadka) > 0;
	
*/

SELECT
    rz.ID_Powoda as Powod,
    os.imie as Imie,
    os.Nazwisko as Nazwisko,
    COUNT(DISTINCT rz.Sygnatura_sprawy) as Ilo��
FROM
    ROZPOCZYNA rz
JOIN
    OSOBY os ON rz.ID_Powoda = os.ID_Osoby
JOIN
    (
        SELECT
            zz.Sygnatura_sprawy,
            COUNT(DISTINCT zz.ID_�wiadka) as Ilo��Swiadkow
        FROM
            ZEZNAJE zz
        GROUP BY
            zz.Sygnatura_sprawy
        HAVING
            COUNT(DISTINCT zz.ID_�wiadka) > 1
    ) as SwiadkowieSpraw ON rz.Sygnatura_sprawy = SwiadkowieSpraw.Sygnatura_sprawy
GROUP BY
    rz.ID_Powoda, os.imie, os.Nazwisko
ORDER BY
    Ilo�� DESC;

	 





---------------------------------------------------------------------------------------------------------------






--	W�ASNE ZAPYTANIE
--  Minister Sprawiedliwo�ci potrzebuje od s�du danych przedstawiaj�cych ile spraw zosta�o zako�czone, 
--  a ile jest w toku od pocz�tku istnienia s�du na ka�dym wydziale.
--  Przedstaw te informacje w formacie		Wydzia�		|	Sprawy w toku	|	Sprawy zako�czone	|	��czna ilo�c spraw

-- Query do sprawdzenia
/*

select * from S�DZIOWIE_SPRAWY

drop view Sprawy_na_wydzia�ach
*/

CREATE VIEW Sprawy_na_wydzia�ach AS
SELECT
    W.Nazwa AS Wydzia�,
    COUNT(CASE WHEN S.Data_zako�czenia IS NULL THEN 1 END) AS Sprawy_w_toku,
    COUNT(CASE WHEN S.Data_zako�czenia IS NOT NULL THEN 1 END) AS Sprawy_zako�czone,
	COUNT(*) AS ��czna_ilo��_spraw
FROM
    WYDZIA�Y W
LEFT JOIN
    S�DZIOWIE S�dzia ON W.Nazwa = S�dzia.Wydzia�
LEFT JOIN
    S�DZIOWIE_SPRAWY S�dziaSprawa ON S�dzia.ID_S�dziego = S�dziaSprawa.ID_S�dziego
JOIN
    SPRAWY S ON S�dziaSprawa.Sygnatura_sprawy = S.Sygnatura
GROUP BY
    W.Nazwa;

SELECT*
FROM Sprawy_na_wydzia�ach





---------------------------------------------------------------------------------------------------------------




-- W�asne zapytanie
-- Kierownik s�du potrzebuje raportu na temat zarejestrowanych os�b w s�dzie. 
-- Przedstaw ile os�b zajmuje dan� role

SELECT
	COUNT(DISTINCT os.ID_Osoby)			AS Liczba_os�b,
	COUNT(DISTINCT r.ID_Powoda)			AS Powodzi,
	(
		SELECT COUNT(DISTINCT r_sub.ID_Powoda)
		FROM ROZPOCZYNA r_sub
		WHERE r_sub.ID_Powoda NOT IN (SELECT ID_Prokuratora FROM PROKURATORZY)
	)									AS Liczba_powodow_bez_prokuratorow,
	
	COUNT(DISTINCT z.ID_�wiadka)		AS �wiadkowie,
	COUNT(DISTINCT bs.ID_Pozwanego)		AS Pozwani,
	COUNT(DISTINCT pm.ID_Pe�nomocnika)	AS Pe�nomocnicy,
	
	(
		SELECT COUNT(DISTINCT p_sub.ID_Pe�nomocnika)
		FROM PE�NOMOCNICY p_sub
		WHERE p_sub.ID_Pe�nomocnika NOT IN (SELECT ID_Adwokata FROM ADWOKACI)
	)									AS Liczba_pe�nomocnik�w_bez_adwokat�w,

	COUNT(DISTINCT mnp.Numer_dyplomu)	AS Liczba_Magistr_nauk_prawniczych,
	COUNT(DISTINCT a.ID_Adwokata)		AS Adwokaci,
	COUNT(DISTINCT p.ID_Prokuratora)	AS Prokuratorzy,
	COUNT(DISTINCT s.ID_S�dziego)		AS S�dziowie,

	COUNT(DISTINCT os.ID_Osoby) - 
	    (
		SELECT COUNT(DISTINCT r_sub.ID_Powoda)
		FROM ROZPOCZYNA r_sub
		WHERE r_sub.ID_Powoda NOT IN (SELECT ID_Prokuratora FROM PROKURATORZY)
		) 
		-
	    COUNT(DISTINCT z.ID_�wiadka) - 
	    COUNT(DISTINCT bs.ID_Pozwanego) - 
	    COUNT(DISTINCT mnp.Numer_dyplomu) -
		(
		SELECT COUNT(DISTINCT p_sub.ID_Pe�nomocnika)
		FROM PE�NOMOCNICY p_sub
		WHERE p_sub.ID_Pe�nomocnika NOT IN (SELECT ID_Adwokata FROM ADWOKACI)
		)								AS Liczba_os�b_bez_roli

FROM
	OSOBY os
CROSS JOIN
	MAGISTROWIE_NAUK_PRAWNICZYCH mnp
LEFT JOIN
	ADWOKACI a ON os.ID_Osoby = a.ID_Adwokata
LEFT JOIN
	PROKURATORZY p ON os.ID_Osoby = p.ID_Prokuratora
LEFT JOIN
	S�DZIOWIE s ON os.ID_Osoby = s.ID_S�dziego
LEFT JOIN
	ROZPOCZYNA r ON os.ID_Osoby = r.ID_Powoda
LEFT JOIN
	ZEZNAJE z ON os.ID_Osoby = z.ID_�wiadka
LEFT JOIN
	BRONI_SI�_W bs ON os.ID_Osoby = bs.ID_Pozwanego
LEFT JOIN
	PE�NOMOCNICY pm ON os.ID_Osoby = pm.ID_Pe�nomocnika;

	