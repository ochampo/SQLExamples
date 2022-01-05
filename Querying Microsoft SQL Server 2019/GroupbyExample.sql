select city from Person.Address
order by city


select * from Person.Address
order by city



select city , count(*)
from Person.Address

GROUP BY City

order by city

select city , count(*), StateProvinceID  
from Person.Address

GROUP BY City, StateProvinceID

order by city

