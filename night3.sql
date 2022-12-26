SELECT * FROM noahscustomers c
WHERE MOD(EXTRACT(YEAR FROM birthdate), 12) = 2 AND (((EXTRACT(MONTH FROM birthdate) = 3 AND EXTRACT(DAY FROM birthdate) >= 21)) 
OR (EXTRACT(MONTH FROM birthdate) = 4 AND EXTRACT(DAY FROM birthdate) <= 19))
AND citystatezip = 'South Ozone Park, NY 11420';
