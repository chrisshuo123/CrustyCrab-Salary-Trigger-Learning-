use mydb_testrigger;

create table employees (
	employee_id int(10) primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    hourly_pay decimal(10,2),
    job varchar(100),
    hire_date DATE,
    Supervisor_fkId int(10)
);

alter table employees
add column supervisor_fkId INT(10) after hire_date;

insert into employees (first_name, last_name, hourly_pay, job, hire_date, supervisor_fkId)
VALUES
	('Eugene', 'Krabs', 25.50, 'manager', '2023-01-02', null),
	('Squidward', 'Tentacles', 15.00, 'cashier', '2023-01-03', 5),
    ('Spongebob', 'Squarepants', 12.50, 'cook', '2023-01-04', 5),
    ('Patrick', 'Star', 12.50, 'cook', '2023-01-05', 5),
    ('Sandy', 'Cheeks', 17.25, 'asst. manager', '2023-01-06', 1),
    ('Sheldon', 'Plankton', 10.00, 'janitor', '2023-01-07', 5);

ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2) AFTER hourly_pay;

UPDATE employees
SET salary = hourly_pay * 2080;
/* NOTE: 8 hours of work / day, multiply by 52 weeks in 1 year, result is
2080 hours of total work in a typical year */

select * from employees;