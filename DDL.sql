USE cdg_hyd_jfs_053;

DROP TABLE parking_spots;
DROP TABLE employees;

CREATE TABLE parking_spots (
    parking_spot_id INT AUTO_INCREMENT,
    spot_number TINYINT NOT NULL,
    basement_level TINYINT NOT NULL,
    CONSTRAINT `pk_parking_spots_parking_spot_id` PRIMARY KEY (parking_spot_id)
);


CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT,
    first_name CHAR(100) NOT NULL,
    last_name CHAR(100) NOT NULL,
    parking_spot_id INT NULL,
    CONSTRAINT `pk_employees_employee_id` PRIMARY KEY (employee_id),
    CONSTRAINT `fk_employees_parking_spot_id` FOREIGN KEY (parking_spot_id)
        REFERENCES parking_spots (parking_spot_id),
    CONSTRAINT `uq_employee_parking_spot_id` UNIQUE (parking_spot_id)
);

ALTER TABLE employees AUTO_INCREMENT=101;
ALTER TABLE parking_spots AUTO_INCREMENT=201;

