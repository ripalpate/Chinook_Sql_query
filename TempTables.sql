Create table #myCoolTable (FullName varchar(255), CoolnessRating int)
drop table #myCoolTable
--#myCoolTable will not be global can be used in only that file
-- ##myCoolerTable- temparary won't show up in chinook and it will be accessible by any file and any user. Its global

Select c.*,i.Total
into #invoice_temp_data
from Invoice i
Join Customer c on c.CustomerId = i.CustomerId
Where FirstName like 'a%'

Select * from #invoice_temp_data
