-- Active: 1687778507418@@127.0.0.1@3306@mydatabase

SELECT DEPT.name, EMPLOYEES.FullName, EMPLOYEES.Hiredate
FROM DEPT
JOIN EMPLOYEES ON DEPT.id = EMPLOYEES.DeptId
ORDER BY DEPT.name ASC, EMPLOYEES.Hiredate DESC;
