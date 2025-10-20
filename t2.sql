CREATE DATABASE IF NOT EXISTS companydb;

CREATE TABLE IF NOT EXISTS companydb.employee(
    employee_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(120),
    last_name VARCHAR(120),
    hire_date DATE,
    notes TEXT NULL,
    is_active BOOLEAN DEFAULT 1
);

ALTER TABLE companydb.employee
ADD COLUMN email VARCHAR(150);

ALTER TABLE companydb.employee
MODIFY COLUMN first_name VARCHAR(80);

ALTER TABLE companydb.employee
DROP COLUMN is_active;
