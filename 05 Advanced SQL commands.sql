show all;
show timezone;

select now();
select timeofday();

select current_time;
select current_date;

select extract(year from payment_date) from payment;
select extract(month from payment_date) as myMonth from payment
where payment_id=17507;
select extract(quarter from payment_date) from payment
where payment_id=17506;


select age(payment_date) from payment;

select to_char(payment_date,'Month  yyy') from payment;
select to_char(payment_date,'mon/dd/yyyy') from payment;
select to_char(payment_date,'mm-dd-yy') from payment;

select distinct( to_char(payment_date,'Month')) from payment;
select count(*) from payment
where extract(dow from payment_date)=1;

select round(rental_rate/replacement_cost,2)*100 as ratio from film;
select 0.1*replacement_cost as deposit from film;

select length(first_name) as len_fn from customer;
select first_name||last_name as fyllNameWithoutSpace from customer;
select first_name || ' ' || last_name from customer;
select upper(first_name) || ' ' || lower(last_name) from customer;
select first_name ||  last_name || '@gmail.com' from customer;
select left(first_name,1) ||  last_name || '@gmail.com' from customer;
select lower(left(first_name,1)) ||  lower(last_name) || '@gmail.com' as custommail from customer;

select title,rental_rate from film
where rental_rate>=(select avg(rental_rate) from film);

select * from rental
where return_date between'2005-05-29' and '2005-05-30';

select inventory.film_id from rental
inner join inventory on inventory.inventory_id = rental.rental_id
where return_date between '2005-05-29' and '2005-05-30';

select film_id,title from film
where film_id in
(select inventory.film_id from rental
inner join inventory on inventory.inventory_id = rental.rental_id
where return_date between '2005-05-29' and '2005-05-30')
order by film_id;

select first_name , last_name from customer as c
where exists(
select * from payment as p
where p.customer_id=c.customer_id
and amount>10
);

select first_name , last_name from customer as c
where not exists(
select * from payment as p
where p.customer_id=c.customer_id
and amount>10
);


select f1.title,f2.title,f1.length,f2.length from film as f1
join film f2
on f1.length=f2.length
and f1.film_id!=f2.film_id
order by f1.title;