# find employees with parking spots

SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        INNER JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;

# get all employees including those without parking spots
  
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        LEFT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;

# get all parking spots including those unassigned
     
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    COALESCE(`ps`.parking_spot_id, 'Not assigned') AS `parking_spot_id`,
    COALESCE(`ps`.spot_number, 'Not assigned') AS `spot_number`,
    COALESCE(`ps`.basement_level, 'Not assigned') AS `basement_level`
FROM
    employees AS `e`
        LEFT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;
    
# get all employees and all parking spots
       
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        LEFT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id 
UNION SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        RIGHT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;

# find employees without parking spots
   
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        LEFT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
	`e`.parking_spot_id IS NULL;

# find unassigned parking spots

SELECT 
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    parking_spots AS `ps`
        LEFT JOIN
    employees AS `e` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
    `e`.employee_id IS NULL;
    
# find employees with parking spots at a particular basement level
  
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employees AS `e`
        LEFT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
	`ps`.basement_level=1;
    
# find unassigned parking spots at particular basement level

SELECT 
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    parking_spots AS `ps`
        LEFT JOIN
    employees AS `e` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
    `e`.employee_id IS NULL
    AND `ps`.basement_level = 1;