use sad
select * from adwokaci where numer_dyplomu = 1234
select * from magistrowie_nauk_prawniczych where numer_dyplomu = 1234

update magistrowie_nauk_prawniczych
set numer_dyplomu = 999999
WHERE numer_dyplomu = 1234

select * from adwokaci where numer_dyplomu = 999999
select * from magistrowie_nauk_prawniczych where numer_dyplomu = 999999



select * FROM osoby where id_osoby = 1
select * from adwokaci where numer_dyplomu = 999999
select * from pe³nomocnicy where id_pe³nomocnika = 1

delete from osoby
WHERE ID_OSOBY = 1

select * FROM osoby where id_osoby = 1
select * from adwokaci where numer_dyplomu = 999999
select * from pe³nomocnicy where id_pe³nomocnika = 1




select * from sprawy where sygnatura = 'III AUa 919/17'
select * from rozpoczyna where sygnatura_sprawy = 'III AUa 919/17'
select * from zeznaje where sygnatura_sprawy = 'III AUa 919/17'
select * from broni_siê_w where sygnatura_sprawy = 'III AUa 919/17'

update sprawy
set sygnatura = 'LaL AUa 919/17'
WHERE sygnatura = 'III AUa 919/17'

select * from sprawy where sygnatura = 'LaL AUa 919/17'
select * from rozpoczyna where sygnatura_sprawy = 'LaL AUa 919/17'
select * from zeznaje where sygnatura_sprawy = 'LaL AUa 919/17'
select * from broni_siê_w where sygnatura_sprawy = 'LaL AUa 919/17'



select * from sêdziowie

update wydzia³y
set nazwa = 'Tralala'
where nazwa = 'Egzekucyjny'
select * from sêdziowie

select * from sêdziowie

delete from wydzia³y
where nazwa = 'Tralala'

select * from sêdziowie
