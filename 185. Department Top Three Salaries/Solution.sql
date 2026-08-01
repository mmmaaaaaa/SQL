SELECT Department.name AS Department, e1.name AS Employee, e1.salary AS Salary
FROM Employee e1 JOIN Department
ON e1.departmentId = Department.id
WHERE (SELECT COUNT(DISTINCT salary) 
       FROM Employee e2 
       WHERE e2.departmentId = e1.departmentId 
       AND e2.salary > e1.salary) < 3