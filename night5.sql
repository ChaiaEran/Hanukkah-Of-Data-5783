SELECT * FROM noahscustomers c
INNER JOIN noahsorders o ON o.customerid = c.customerid
INNER JOIN noahsordersitems i ON i.orderid = o.orderid
INNER JOIN noahsproducts p ON p.sku = i.sku
WHERE p.sku LIKE 'PET'||'%' AND c.citystatezip LIKE 'Queens Village'||'%'
ORDER BY c.customerid
