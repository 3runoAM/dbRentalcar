SELECT  L.ID "ID da locação", L.START_DATE "Data de início",
        L.END_DATE "Data Final", L.TOTAL "Preço total",
        L.CUSTOMER_ID "ID do cliente", L.CAR_ID "ID do automóvel",
        L.EMPLOYEE_ID "ID do funcionário"
FROM    LOCATIONS L
WHERE   TOTAL = (
    SELECT MAX(L.TOTAL)
    FROM LOCATIONS L
    )