Select Top(1) i.BillingCountry, Sum(i.Total) as TotalSales
From Invoice as i
Group By i.BillingCountry
Order By TotalSales Desc