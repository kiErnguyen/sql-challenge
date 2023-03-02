SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name",
	emp.sex "Sex",
	sal.salary "Salary"
FROM
	employees emp
JOIN
	salaries sal
	ON emp.emp_no = sal.emp_no;

SELECT
	emp.first_name "First Name",
	emp.last_name "Last Name",
	emp.hire_date "Hire Date"
FROM
	employees emp
WHERE
	emp.hire_date >= '1986-01-01' AND
	emp.hire_date <= '1986-12-31';

SELECT
	dma.dept_no "Department No.",
	dep.dept_name "Department Name",
	emp.emp_no "Employee No.",
	emp.last_name "Manager Last Name",
	emp.first_name "Manager First Name"
FROM
	dept_manager dma
JOIN
	departments dep
	ON dma.dept_no = dep.dept_no
JOIN
	employees emp
	ON dma.emp_no = emp.emp_no;

SELECT
	dem.dept_no "Department No.",
	dep.dept_name "Department Name",
	emp.emp_no "Employee No.",
	emp.last_name "Employee Last Name",
	emp.first_name "Employee First Name"
FROM
	dept_emp dem
JOIN
	departments dep
	ON dem.dept_no = dep.dept_no
JOIN
	employees emp
	ON dem.emp_no = emp.emp_no;

SELECT
	emp.first_name "First Name",
	emp.last_name "Last Name",
	emp.sex "Sex"
FROM
	employees emp
WHERE
	emp.first_name = 'Hercules' AND
	emp.last_name LIKE 'B%';

SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name"
FROM
	dept_emp dem
JOIN
	employees emp
	ON emp.emp_no = dem.emp_no
JOIN
	departments dep
	ON dep.dept_no = dem.dept_no
WHERE
	dep.dept_name = 'Sales';

SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name",
	dep.dept_name "Department"
FROM
	dept_emp dem
JOIN
	employees emp
	ON emp.emp_no = dem.emp_no
JOIN
	departments dep
	ON dep.dept_no = dem.dept_no
WHERE
	dep.dept_name IN ('Sales', 'Development');

SELECT
	emp.last_name "Last Name",
	COUNT (emp.last_name) "Total"
FROM
	employees emp
GROUP BY
	emp.last_name
ORDER BY
	"Total" DESC;