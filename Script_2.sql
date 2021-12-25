--1 ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id;
SELECT employee_name, monthly_salary 
	FROM employees
	JOIN employees_salary
		ON employees.id = employees_salary.employee_id;

-- 2 ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id 
where monthly_salary < 2000;
SELECT employee_name, monthly_salary 
	FROM employees
	JOIN employees_salary
		ON employees.id = employees_salary.employee_id 
	WHERE monthly_salary < 2000;

-- 3 ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employee_name is null;
SELECT employee_name, monthly_salary 
	FROM employees
	RIGHT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE employee_name IS NULL;

-- 4 ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employee_name is null
and monthly_salary < 2000;
SELECT employee_name, monthly_salary 
	FROM employees
	RIGHT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE employee_name IS NULL
		AND monthly_salary < 2000;

-- 5 ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary 
from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where monthly_salary is null;
SELECT employee_name, monthly_salary 
	FROM employees
	LEFT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE monthly_salary IS NULL;

-- 6 ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from roles_employees
full join employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id;
SELECT employee_name, role_name
	FROM roles_employees
	FULL JOIN employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id;

-- 7 ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Java %';
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Java %';

-- 8 ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Python %';
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%PythON %';

-- 9  ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%QA%';
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 10  ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Manual QA%';
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Manual QA%';

-- 11 ������� ����� � ��������� ��������������� QA
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Automation QA%';
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%AutomatiON QA%';

-- 12 ������� ����� � �������� Junior ������������
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Junior%';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Junior%';

-- 13 ������� ����� � �������� Middle ������������.
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Middle%';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Middle%';

-- 14 ������� ����� � �������� Senior ������������.
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Senior%';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Senior%';

-- 15  ������� �������� Java �������������.
select monthly_salary, role_name
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Java %';
SELECT monthly_salary, role_name
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Java %';

-- 16  ������� �������� Python �������������
select monthly_salary, role_name
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Python%';
SELECT monthly_salary, role_name
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Python%';

-- 17 ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Junior Python%';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior Python%';

-- 18 ������� ����� � �������� Middle JS �������������.
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle JavaS%';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Middle JavaS%';

-- 19 ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Senior%' and role_name like'%Java %';
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Senior%' 
		AND role_name LIKE '%Java %';

-- 20  ������� �������� Junior QA ���������
select monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%' and role_name like'%QA%';
SELECT monthly_salary
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior%' 
		AND role_name LIKE '%QA%';

-- 21  ������� ������� �������� ���� Junior ������������
select avg(monthly_salary)
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%';
SELECT avg(monthly_salary)
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior%';

-- 22  ������� ����� ������� JS �������������
select sum(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%JavaS%';
SELECT sum(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%JavaS%';

-- 23  ������� ����������� �� QA ���������
select min(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';
SELECT min(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%QA%';

-- 24 ������� ������������ �� QA ���������
select max(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';
SELECT max(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%QA%';

-- 25 ������� ���������� QA ���������
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%QA%';
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 26 ������� ���������� Middle ������������.
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle%';
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Middle%';

-- 27 ������� ���������� �������������
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%';
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%developer%';

-- 28 ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%';
SELECT sum(monthly_salary)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%developer%';

-- 29  ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
order by employee_name;
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	ORDER BY employee_name;

-- 30 ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary BETWEEN 1700 AND 2300
	ORDER BY monthly_salary;

-- 31  ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary < 2300
order by monthly_salary;
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary < 2300
	ORDER BY monthly_salary;

-- 32  ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary IN (1100, 1500, 2000)
	ORDER BY monthly_salary;