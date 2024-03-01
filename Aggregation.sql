SELECT cast(ceiling(avg(cast (SALARY as float)-cast(Replace(cast (SALARY as varchar),'0','' ) as float) )) as int)
FROM EMPLOYEES 
