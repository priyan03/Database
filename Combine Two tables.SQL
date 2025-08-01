-- create tables
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Address;

CREATE TABLE Person (
  personId INT PRIMARY KEY,
  lastName VARCHAR(50),
  firstName VARCHAR(50)
);

CREATE TABLE Address (
  addressId INT PRIMARY KEY,
  personId INT,
  city VARCHAR(100),
  state VARCHAR(100)
);

-- insert sample data
INSERT INTO Person (personId, lastName, firstName) VALUES
  (1, 'Wang', 'Allen'),
  (2, 'Alice', 'Bob');

INSERT INTO Address (addressId, personId, city, state) VALUES
  (1, 2, 'New York City', 'New York'),
  (2, 3, 'Leetcode', 'California');

-- query answer
SELECT 
  p.firstName,
  p.lastName,
  a.city,
  a.state
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId;
