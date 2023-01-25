create table employes(
	emp_id serial primary  key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birthday date check(birthday>'1990-01-01'),
	hire_date date check(hire_date >birthday),
	salary integer check(salary>0)
)