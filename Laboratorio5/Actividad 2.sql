
-- Punto 1 Actividad 2 
-- consulta general me da un listado con la abreviadura del pais y la cantidad de rios que tiene
SELECT res.country,res.count from 
-- sub consulta 1 que me da los conteos de rios que tiene cada pais
 (select Count (DISTINCT geo_river.river),geo_river.country
from geo_river join country on geo_river.country = country.code GROUP by geo_river.country)
--fin de esa subconsulta 1
as res where res.count > 15;
-- fin consulta de general

-- Punto 2 Actividad 2
SELECT DISTINCT name,organization from country as "Country Members"
join ismember im
ON im.organization = 'UNESCO' OR im.organization = 'UNASUR';

-- Punto 3 actividad "
select name,population,elevation from city where country = 'CO' order by population DESC;
-- punto 4 actividad 2
select country from economy where service + industry >= 70 and inflation < 2;