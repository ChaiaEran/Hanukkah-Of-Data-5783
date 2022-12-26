SELECT DISTINCT * FROM noahscustomers c
INNER JOIN noahsorders o ON c.customerid = o.customerid
INNER JOIN noahsordersitems i ON o.orderid = i.orderid
INNER JOIN noahsproducts p ON i.sku = p.sku
WHERE starts_with(c.name, 'J') AND starts_with(substring(c.name, '([^[:space:]]+)(?:,|$)'), 'D') AND EXTRACT(YEAR FROM o.ordered) = 2017 AND p.desc LIKE '%' || 'Bagel' || '%'
