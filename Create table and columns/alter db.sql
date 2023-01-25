create table information(
	info_id serial primary key,
	title varchar(500) not null,
	person varchar(50) not null unique
)