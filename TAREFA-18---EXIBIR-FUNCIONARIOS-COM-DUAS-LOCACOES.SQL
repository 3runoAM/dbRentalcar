SELECT      *
FROM        EMPLOYEES AS E
JOIN        LOCATIONS AS L
ON          E.ID = L.EMPLOYEE_ID
GROUP BY    E.ID
HAVING      COUNT(L.EMPLOYEE_ID) >= 2;