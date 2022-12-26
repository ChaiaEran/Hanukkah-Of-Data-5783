--First query
SELECT pr.desc, od.ordered FROM noahsordersitems it
INNER JOIN noahsorders od ON it.orderid = od.orderid
INNER JOIN noahsproducts pr ON it.sku = pr.sku
WHERE od.customerid = 8342 AND pr.desc LIKE '%'||'('||'%'

--Second query
SELECT DISTINCT c.* FROM noahscustomers c
INNER JOIN noahsorders o ON o.customerid = c.customerid
INNER JOIN noahsordersitems i ON i.orderid = o.orderid
INNER JOIN noahsproducts p ON p.sku = i.sku
WHERE p.desc LIKE 'Electric Machine%' AND p.desc NOT LIKE '%amber%' AND
(EXTRACT(YEAR FROM o.ordered) = 2019 AND EXTRACT(MONTH FROM o.ordered) = 06 AND EXTRACT(DAY FROM o.ordered) = 01)
