CREATE TABLE Parking_Spots (
    parking_spot_id INT AUTO_INCREMENT PRIMARY KEY,
    spot_number TINYINT NOT NULL,
    basement_level TINYINT NOT NULL
);
CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    parking_spot_id INT NULL,

    CONSTRAINT fk_employee_parking
    FOREIGN KEY (parking_spot_id)
    REFERENCES Parking_Spots(parking_spot_id)
);