-- DATA Analysis
--1
SELECT em.emp_no, last_name, first_name, sex,salary
FROM employees em
LEFT JOIN salaries sl
ON em.emp_no=sl.emp_no

--2
SELECT first_name,last_name,hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) =1986


--3
SELECT dm.dept_no,d.dept_name,em.emp_no,em.last_name,em.first_name
FROM dept_manager dm
LEFT JOIN departments d
on dm.dept_no=d.dept_no
LEFT JOIN employees as em
on dm.emp_no=em.emp_no


--4
SELECT dm.dept_no,em.emp_no,em.last_name,em.first_name,dp.dept_name
FROM employees as em
FULL OUTER JOIN dept_emp dm
on em.emp_no=dm.emp_no
FULL OUTER JOIN departments as dp
on dm.dept_no=dp.dept_no


--5
SELECT em.first_name,em.last_name,em.sex
FROM employees as em
WHERE em.first_name='Hercules' AND em.last_name='B%'

--6
List each employee in the 
Sales department, including their employee number, last name, and first name.

SELECT em.emp_no,em.last_name,em.first_name
FROM departments as dp
FULL OUTER JOIN dept_emp as de
ON dp.dept_no=de.dept_no
FULL OUTER JOIN employees em
ON de.emp_no=em.emp_no
WHERE dp.dept_name= 'Sales'


--7
SELECT em.emp_no,em.last_name,em.first_name,dp.dept_name
FROM departments as dp
FULL OUTER JOIN dept_emp as de
ON dp.dept_no=de.dept_no
FULL OUTER JOIN employees em
ON de.emp_no=em.emp_no
WHERE dp.dept_name IN ( 'Sales','Development')

--8
SELECT last_name,count(*)
FROM employees
GROUP BY last_name
ORDER BY count(*) DESC 

