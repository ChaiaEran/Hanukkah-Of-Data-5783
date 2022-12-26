--First query
SELECT COUNT(c.customerid) AS collectiblecount, c.customerid FROM noahscustomers c
INNER JOIN noahsorders o ON o.customerid = c.customerid
INNER JOIN noahsordersitems i ON i.orderid = o.orderid
INNER JOIN noahsproducts p ON p.sku = i.sku
WHERE c.citystatezip LIKE 'Manhattan%' AND p.desc LIKE 'Noah''s%'
GROUP BY c.customerid
ORDER BY collectiblecount desc

--Second query
SELECT * FROM noahscustomers
WHERE customerid = 4308
