Select i.BillingCountry , Sum(i.Total) as TotalSales
From Invoice as i
Group By BillingCountry