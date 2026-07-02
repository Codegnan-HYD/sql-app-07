CREATE TABLE Employee
(
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

CREATE TABLE ParkingSpot
(
    ParkingSpotID INT AUTO_INCREMENT PRIMARY KEY,
    SpotNumber VARCHAR(10) NOT NULL,
    BasementLevel INT NOT NULL,
    EmployeeID INT UNIQUE,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employee(EmployeeID)
);