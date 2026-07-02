# find employees with parking spots
SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    employee AS `e`
        INNER JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;
    
# get all employees including those without parking spots
  select `e`.employee_id,
  `e`.first_name,
  `e`.last_name,
  `ps`.parking_spot_id,
  `ps`.spot_number,
  `ps`.basement_level
  from
  employee `e`
  left join
   parking_spots `ps` on `e` .parking_spot_id=`ps`.parking_spot_id;
   
   
   
  # get all parking spots including those unassigned 
  SELECT 
    `e`.employee_id,
    `e`.first_name,
    `e`.last_name,
    COALESCE(`ps`.parking_spot_id, 'Not assigned') AS `parking_spot_id`,
    COALESCE(`ps`.spot_number, 'Not assigned') AS `spot_number`,
    COALESCE(`ps`.basement_level, 'Not assigned') AS `basement_level`
FROM
    employee AS `e`
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
    employee AS `e`
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
    employee AS `e`
        RIGHT JOIN
    parking_spots AS `ps` ON `e`.parking_spot_id = `ps`.parking_spot_id;
    
   # find employees without parking spots 
   select `e`.employee_id,
     `e`.first_name,
     `e`.last_name,
     `e`.parking_spot_id,
     `ps`.spot_number,
     `ps`.basement_level
	from
     employee `e` 
      RIGHT JOIN
      parking_spots `ps` on `e`.parking_spot_id=`ps`.parking_spot_id
      where `e`.parking_spot_id IS NULL;
      
    # find unassigned parking spots

SELECT 
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    parking_spots AS `ps`
        LEFT JOIN
    employee AS `e` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
    `e`.employee_id IS NULL;
   
# select employee without parking
        select `e`.employee_id,
     `e`.first_name,
     `e`.last_name,
     `e`.parking_spot_id,
     `ps`.spot_number,
     `ps`.basement_level
	from
     employee `e` 
      LEFT  JOIN
      parking_spots `ps` on `e`.parking_spot_id=`ps`.parking_spot_id
      where
      `e`.parking_spot_id IS NULL;
      
      
      # FIND EMPLOYEE WITH PARKING SPOTS AT a particualar basement level;
      
     select `e`.employee_id,
     `e`.first_name,
     `e`.last_name,
     `e`.parking_spot_id,
     `ps`.spot_number,
     `ps`.basement_level
	from
     employee `e` 
      inner JOIN
       parking_spots `ps` on `e`.parking_spot_id=`ps`.parking_spot_id
         where
      `ps`.basement_level=1;
      
   # find unassigned parking spots at particular basement level

SELECT 
    `ps`.parking_spot_id,
    `ps`.spot_number,
    `ps`.basement_level
FROM
    parking_spots AS `ps`
        LEFT JOIN
    employee AS `e` ON `e`.parking_spot_id = `ps`.parking_spot_id
WHERE 
    `e`.employee_id IS NULL
    AND `ps`.basement_level = 1; 