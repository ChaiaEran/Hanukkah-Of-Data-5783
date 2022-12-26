SELECT DISTINCT ON (c.customerid, EXTRACT(YEAR FROM o.ordered),EXTRACT(MONTH FROM o.ordered),EXTRACT(DAY FROM o.ordered)) ordered, p.sku, c.* FROM noahsorders o
INNER JOIN noahscustomers c ON c.customerid = o.customerid
INNER JOIN noahsordersitems i ON o.orderid = i.orderid
INNER JOIN noahsproducts p ON i.sku = p.sku
WHERE EXTRACT(HOUR from o.ordered) < 5 AND EXTRACT(HOUR from o.ordered) > 3 AND p.sku LIKE 'BKY'||'%'
