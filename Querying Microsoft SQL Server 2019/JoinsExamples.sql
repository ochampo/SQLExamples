select BusinessEntityID,FirstName, LastName
from Person.Person;


select BusinessEntityID, PhoneNumber
from Person.PersonPhone;

select Person.BusinessEntityID,
Person.FirstName, 
Person.LastName, 
PersonPhone.PhoneNumber
from Person.Person JOIN  Person.PersonPhone 
    on Person.BusinessEntityID = PersonPhone.BusinessEntityID