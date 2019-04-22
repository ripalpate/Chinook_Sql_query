Create table #myCoolTable (FullName varchar(255), CoolnessRating int)
drop table #myCoolTable
/*#myCoolTable will not be global can be used in only that file.
Temporary tables are particularly useful when you have a large number of records in a table and you 
repeatedly need to interact with a small subset of those records. In such cases instead of filtering 
the data again and again to fetch the subset, you can filter the data once and store it in a temporary table. 
You can then execute your queries on that temporary table. 
Temporary tables are stored inside “tempdb” which is a system database.*/

/*##myCoolerTable- temparary won't show up in chinook and it will be accessible by any connection and any user. Its global.
 and accessible to all the open connections. */

Select c.*,i.Total
into #invoice_temp_data
from Invoice i
Join Customer c on c.CustomerId = i.CustomerId
Where FirstName like 'a%'

Select * from #invoice_temp_data
