select cast(round(abs(c-a)+abs(d-b),4) as decimal(10,4)) from (

select min(LAT_N) [a],min(LONG_W) [b],max(LAT_N)[c],max(LONG_W) [d] from Station) g
