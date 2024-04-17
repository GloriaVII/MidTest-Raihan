CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

 --Menampilkan Tabel
 select * from employee_table;
  
 SELECT DISTINCT salary FROM employee_table ORDER BY salary DESC
 OFFSET 2 LIMIT 1
  