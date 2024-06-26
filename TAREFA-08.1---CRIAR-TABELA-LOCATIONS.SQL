CREATE TABLE LOCATIONS (
    ID INT PRIMARY KEY,
    START_DATE DATETIME NOT NULL,
    END_DATE DATETIME NOT NULL,
    TOTAL FLOAT(10,2) NOT NULL,
    CUSTOMER_ID INT NOT NULL,
    CAR_ID INT NOT NULL,
    EMPLOYEE_ID INT NOT NULL,

    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (ID),
    FOREIGN KEY (CAR_ID) REFERENCES CARS (ID),
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (ID)
);