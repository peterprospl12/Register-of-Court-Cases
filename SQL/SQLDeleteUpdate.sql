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
select * from pe�nomocnicy where id_pe�nomocnika = 1

delete from osoby
WHERE ID_OSOBY = 1

select * FROM osoby where id_osoby = 1
select * from adwokaci where numer_dyplomu = 999999
select * from pe�nomocnicy where id_pe�nomocnika = 1




select * from sprawy where sygnatura = 'III AUa 919/17'
select * from rozpoczyna where sygnatura_sprawy = 'III AUa 919/17'
select * from zeznaje where sygnatura_sprawy = 'III AUa 919/17'
select * from broni_si�_w where sygnatura_sprawy = 'III AUa 919/17'

update sprawy
set sygnatura = 'LaL AUa 919/17'
WHERE sygnatura = 'III AUa 919/17'

select * from sprawy where sygnatura = 'LaL AUa 919/17'
select * from rozpoczyna where sygnatura_sprawy = 'LaL AUa 919/17'
select * from zeznaje where sygnatura_sprawy = 'LaL AUa 919/17'
select * from broni_si�_w where sygnatura_sprawy = 'LaL AUa 919/17'



select * from s�dziowie

update wydzia�y
set nazwa = 'Tralala'
where nazwa = 'Egzekucyjny'
select * from s�dziowie

select * from s�dziowie

delete from wydzia�y
where nazwa = 'Tralala'

select * from s�dziowie
