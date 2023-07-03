-- Active: 1687778507418@@127.0.0.1@3306@mydatabase

INSERT INTO DEPT (id, name) 
VALUES 
    (1, 'Finance'), 
    (2, 'HR'), 
    (3, 'IT');


INSERT INTO EMPLOYEES (id, Fullname, Salary, Hiredate, DeptId)
VALUES 
    (1, 'John Smith', 12000.00, '2021-02-03 12:00:00', 1),
    (2, 'Frederick Carson', 12000.00, '2021-08-15 12:00:00', 1),
    (3, 'Andrew Kenna', 12000.00, '2021-11-25 12:00:00', 1),
    (4, 'Louis Paityn', 15000.00, '2020-01-12 12:00:00', 2),
    (5, 'Hermann Guss', 15000.00, '2020-03-09 12:00:00', 2),
    (6, 'Kathy Shayna', 15000.00, '2020-07-01 12:00:00', 2),
    (7, 'Hailie Laurel', 15000.00, '2020-12-07 12:00:00', 2),
    (8, 'Jane Matilda', 30000.00, '2018-02-03 12:00:00', 3),
    (9, 'Elianna Tanya', 30000.00, '2018-04-14 12:00:00', 3),
    (10, 'Makaila Areli', 30000.00, '2018-08-11 12:00:00', 3);

