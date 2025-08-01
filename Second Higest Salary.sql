-- clean up if re-running
DROP TABLE IF EXISTS Employee;

-- create table
CREATE TABLE Employee (
  id INT PRIMARY KEY,
  salary INT
);

-- insert sample data
INSERT INTO Employee (id, salary) VALUES
  (1, 100),
  (2, 200),
  (3, 300);

-- query to get second highest distinct salary
SELECT 
  (SELECT DISTINCT salary 
   FROM Employee 
   ORDER BY salary DESC 
   LIMIT 1 OFFSET 1
  ) AS SecondHighestSalary;
