# Inserting records for 15 employees

INSERT INTO Employee(FirstName,LastName)
VALUES
('Rahul','Sharma'),('Priya','Reddy'),('Arjun','Kumar'),('Sneha','Patel'),('Rohan','Singh'),('Neha','Gupta'),('Amit','Verma'),('Pooja','Joshi'),
('Kiran','Naidu'),('Anil','Rao'),('Deepa','Mishra'),('Vijay','Yadav'),('Suresh','Khan'),('Divya','Nair'),('Manoj','Das');


# Inserting records for 15 parking spots 

INSERT INTO ParkingSpot (SpotNumber, BasementLevel, EmployeeID)
VALUES
('B1-01', 1, 1),('B1-02', 1, 2),('B1-03', 1, 3),('B1-04', 1, NULL),('B1-05', 1, NULL),

('B2-01', 2, 4),('B2-02', 2, 5),('B2-03', 2, 6),('B2-04', 2, NULL),('B2-05', 2, NULL),

('B3-01', 3, 7),('B3-02', 3, 8),('B3-03', 3, NULL),('B3-04', 3, NULL),('B3-05', 3, NULL);
