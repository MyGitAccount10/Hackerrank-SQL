select City, min_.uz [lngt] from (
select  min(len(City)) [uz] from Station ) min_ inner join 

(select distinct City, len(City) [uz], row_number() over(partition by len(city) order by city asc) [num] from Station ) l on min_.uz=l.uz and num=1
union all 
select City, max_.uz [lngt] from (
select  max(len(City)) [uz] from Station ) max_ inner join 

(select distinct City, len(City) [uz], row_number() over(partition by len(city) order by city asc) [num] from Station ) l on max_.uz=l.uz and num=1
