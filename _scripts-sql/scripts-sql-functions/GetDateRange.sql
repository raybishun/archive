--Get Date Range

-- datediff returns an int
-- dateadd returns smalldatetime

select datediff(day,1,getdate())

--get yestersday
select dateadd(day,datediff(day,1,getdate()),0)

--get today
select dateadd(day,datediff(day,0,getdate()),0)

--return all rows from yesterday
select * from yourTable
where yourDate >= dateadd(day,datediff(day,1,getdate()),0)
   and yourDate < dateadd(day,datediff(day,0,getdate()),0)