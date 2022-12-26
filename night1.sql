SELECT * FROM noahscustomers
WHERE starts_with(phone, '4') AND char_length(substring(name, '([^[:space:]]+)(?:,|$)')) = 10
ORDER BY substring(name, '([^[:space:]]+)(?:,|$)')
