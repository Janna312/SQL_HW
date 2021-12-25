--1 Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id;
SELECT employee_name, monthly_salary 
	FROM employees
	JOIN employees_salary
		ON employees.id = employees_salary.employee_id;

-- 2 Вывести всех работников у которых ЗП меньше 2000.
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

-- 3 Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
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

-- 4 Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
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

-- 5 Найти всех работников кому не начислена ЗП.
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

-- 6 Вывести всех работников с названиями их должности.
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

-- 7 Вывести имена и должность только Java разработчиков.
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

-- 8 Вывести имена и должность только Python разработчиков.
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

-- 9  Вывести имена и должность всех QA инженеров.
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

-- 10  Вывести имена и должность ручных QA инженеров.
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

-- 11 Вывести имена и должность автоматизаторов QA
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

-- 12 Вывести имена и зарплаты Junior специалистов
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

-- 13 Вывести имена и зарплаты Middle специалистов.
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

-- 14 Вывести имена и зарплаты Senior специалистов.
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

-- 15  Вывести зарплаты Java разработчиков.
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

-- 16  Вывести зарплаты Python разработчиков
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

-- 17 Вывести имена и зарплаты Junior Python разработчиков
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

-- 18 Вывести имена и зарплаты Middle JS разработчиков.
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

-- 19 Вывести имена и зарплаты Senior Java разработчиков
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

-- 20  Вывести зарплаты Junior QA инженеров
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

-- 21  Вывести среднюю зарплату всех Junior специалистов
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

-- 22  Вывести сумму зарплат JS разработчиков
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

-- 23  Вывести минимальную ЗП QA инженеров
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

-- 24 Вывести максимальную ЗП QA инженеров
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

-- 25 Вывести количество QA инженеров
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

-- 26 Вывести количество Middle специалистов.
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

-- 27 Вывести количество разработчиков
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

-- 28 Вывести фонд (сумму) зарплаты разработчиков.
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

-- 29  Вывести имена, должности и ЗП всех специалистов по возрастанию
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

-- 30 Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
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

-- 31  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
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

-- 32  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
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