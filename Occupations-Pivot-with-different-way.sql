select Doctor,Professor,Singer,Actor from (

select name [Professor],Row_number() over(order by name) [id] from OccuPATIONS where Occupation='Professor' ) as f left join (
select name [Actor],Row_number() over(order by name) [id] from OccuPATIONS where Occupation='Actor') as d on d.id=f.id 
left join
( 
select name [Singer],Row_number() over(order by name) [id] from OccuPATIONS where Occupation='Singer' ) as c on c.id=d.id
left join (
select name [Doctor], Row_number() over(order by name) [id] from OccuPATIONS where Occupation='Doctor' ) as ml on ml.id=c.id
