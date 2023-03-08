-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.employee_number, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.employee_number = s.employee_number;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date LIKE '%1986';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT e.first_name, e.last_name, s.employee_number, s.department_number, d.department_name
FROM department_manager AS s
INNER JOIN departments AS d ON
s.department_number = d.department_number
INNER JOIN employees AS e ON
s.employee_number = e.employee_number;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.department_number, de.employee_number, e.last_name, e.first_name, d.department_name
FROM department_employees AS de
INNER JOIN departments AS d ON
r.department_number = d.department_number
INNER JOIN employees AS e ON
r.employee_number = e.employee_number;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT e.first_name, e.last_name, e.gender
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B_%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT d.department_number, e.employee_number, e.first_name, e.last_name
FROM employees AS e 
INNER JOIN department_employees AS de ON
e.employee_number = de.employee_number
INNER JOIN departments AS d ON
de.department_number = d.department_number
WHERE d.department_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT d.department_name, e.employee_number, e.first_name, e.last_name
FROM employees AS e 
INNER JOIN department_employees AS de ON
e.employee_number = de.employee_number
INNER JOIN departments AS d ON
de.department_number = d.department_number
WHERE d.department_name IN ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;
