SELECT      L.ID "ID da locação", L.START_DATE "Data de início",
            L.END_DATE "Data Final", L.TOTAL "Preço total",
            L.CUSTOMER_ID "ID do cliente", L.CAR_ID "ID do automóvel",
            L.EMPLOYEE_ID "ID do funcionário", C.NAME "Nome do cliente",
            C2.NAME "Carro alugado", E.NAME "Funcionário responsável"
FROM        LOCATIONS L
INNER JOIN  CUSTOMERS C
ON          L.CUSTOMER_ID = C.ID
INNER JOIN  CARS C2
ON          L.CAR_ID = C2.ID
INNER JOIN  EMPLOYEES E
ON          L.EMPLOYEE_ID = E.ID