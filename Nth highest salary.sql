CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT DISTINCT salary
    FROM Employee el
    WHERE (
      SELECT COUNT(DISTINCT salary)
      FROM Employee e2
      WHERE e2.salary > el.salary
    ) = N - 1
    LIMIT 1
  );
END
