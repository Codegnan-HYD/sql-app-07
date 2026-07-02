# Inserting records for 15 parking spots and 15 employees
-- there are 3 basement levels
-- there are 5 parking spots at every basement level

INSERT INTO parking_spots (spot_number, basement_level) VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), 
(1, 2), (2, 2), (3, 2), (4, 2), (5, 2), 
(1, 3), (2, 3), (3, 3), (4, 3), (5, 3);

-- there are 3 employees who are assigned parking spots at basement level 1
-- there are 3 employees who are assigned parking spots at basement level 2
-- there are 2 employees who are assigned parking spots at basement level 3
-- there are 7 employees who are not assigned parking spots.

INSERT INTO employees (first_name, last_name, parking_spot_id) VALUES 
('Bharat', 'Sharma', 201), ('Gaurav', 'Sharma', NULL), ('Ravi', 'Verma', 202), ('Akshat', 'Kumar', NULL), ('Neha', 'Gupta', 203), 
('Arjun', 'Reddy', 206), ('Varsha', 'Gupta', NULL), ('Aakansha', 'Jain', 207), ('Gurpreet', 'Singh', NULL), ('Deepika', 'Kakkar', 208), 
('Pratap', 'Singh', 211), ('Dinesh', 'Kumar', NULL), ('Ankit', 'Verma', 212), ('Harshit', 'Singh', NULL), ('Anuj', 'Katiyal', NULL);

