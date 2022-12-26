SELECT COUNT(c.customerid) AS ordercount, c.* FROM noahscustomers c 
INNER JOIN noahsorders o ON c.customerid = o.customerid
INNER JOIN noahsordersitems i ON i.orderid = o.orderid
INNER JOIN noahsproducts p ON p.sku = i.sku
WHERE i.unit_price < p.wholesale_cost
GROUP BY c.customerid, c.name, c.address, c.citystatezip, c.birthdate, c.phone
ORDER BY ordercount desc
