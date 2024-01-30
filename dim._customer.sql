
--cleaning this
SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [FirstName], 
  c.lastname AS [LastName], 
  c.firstname + ' ' + lastname AS [Full Name], 
  -- combined first and last name
  CASE c.gender WHEN 'F' THEN 'Female' WHEN 'M' THEN 'Male' END AS Gender, 
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- join customer city from geography table
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- ordered list by customer key
