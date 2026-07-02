# Employees with parking spots

SELECT e.EmployeeID,
       e.FirstName,
       e.LastName,
       p.SpotNumber,
       p.BasementLevel
FROM Employee e
INNER JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID;


#All employees including those without parking spots

SELECT
e.EmployeeID,
e.FirstName,
e.LastName,
p.SpotNumber,
p.BasementLevel
FROM Employee e
LEFT JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID;

#All parking spots including unassigned

SELECT
p.ParkingSpotID,
p.SpotNumber,
p.BasementLevel,
e.FirstName,
e.LastName
FROM ParkingSpot p
LEFT JOIN Employee e
ON p.EmployeeID=e.EmployeeID;

#All employees and all parking spots

SELECT
e.EmployeeID,
e.FirstName,
e.LastName,
p.SpotNumber,
p.BasementLevel
FROM Employee e
LEFT JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID

UNION

SELECT
e.EmployeeID,
e.FirstName,
e.LastName,
p.SpotNumber,
p.BasementLevel
FROM Employee e
RIGHT JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID;

#Employees without parking spots

SELECT *
FROM Employee e
LEFT JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID
WHERE p.EmployeeID IS NULL;


#Unassigned parking spots

SELECT *
FROM ParkingSpot
WHERE EmployeeID IS NULL;

#Employees with parking spots at Basement Level 2

SELECT
e.EmployeeID,
e.FirstName,
e.LastName,
p.SpotNumber
FROM Employee e
JOIN ParkingSpot p
ON e.EmployeeID=p.EmployeeID
WHERE p.BasementLevel=2;

#Unassigned parking spots at Basement Level 3

SELECT *
FROM ParkingSpot
WHERE BasementLevel=3
AND EmployeeID IS NULL;


