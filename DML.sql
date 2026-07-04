-- inserting parking_spots

INSERT INTO parking_spots (spot_number, basement_level) VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), 
(1, 2), (2, 2), (3, 2), (4, 2), (5, 2), 
(1, 3), (2, 3), (3, 3), (4, 3), (5, 3);


-- inserting employees
INSERT INTO employees (first_name, last_name, parking_spot_id) VALUES 
('Bharat', 'Sharma', 201), ('Gaurav', 'Sharma', NULL), ('Ravi', 'Verma', 202), ('Akshat', 'Kumar', NULL), ('Neha', 'Gupta', 203), 
('Arjun', 'Reddy', 206), ('Varsha', 'Gupta', NULL), ('Aakansha', 'Jain', 207), ('Gurpreet', 'Singh', NULL), ('Deepika', 'Kakkar', 208), 
('Pratap', 'Singh', 211), ('Dinesh', 'Kumar', NULL), ('Ankit', 'Verma', 212), ('Harshit', 'Singh', NULL), ('Anuj', 'Katiyal', NULL);