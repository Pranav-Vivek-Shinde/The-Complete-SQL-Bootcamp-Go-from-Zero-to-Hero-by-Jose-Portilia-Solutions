
select * from customer
where first_name='Jared';
select * from film
where rental_rate > 4 and replacement_cost > 19.99
and rating='R';
select count(title) from film
where rental_rate > 4 and replacement_cost > 19.99
and rating='R';
select * from film
where rating='R' or rating='PG-13'
and replacement_cost <10;
select count(title) from film
where rating='R' or rating='PG-13';
select count(title) from film
where not rating='R';

select * from customer
order by first_name;
select * from customer
order by first_name desc;
select * from customer
order by store_id,first_name;
select store_id,first_name,last_name from customer
order by store_id,first_name;
select store_id,first_name,last_name from customer
order by store_id desc,first_name asc;


select * from payment
where amount!=0
order by payment_date desc
limit 10;

select customer_id,payment_date,amount from payment
where amount > 0
order by payment_date asc
limit 5;

select film_id , length from film
order by length
limit 5;

select count(film_id) from film
where length<=50;

select amount, payment_date from payment
where amount between 8 and 9;
select count(*) from payment
where amount not between 8 and 9;
select payment_date,amount from payment
where payment_date between '2007-02-01'and '2007-02-15';

select * from payment
where payment_id in (17503,17505,17707);
select distinct(amount) from payment
order by amount;
select amount from payment
where amount in (2.99,3.99,4.99);
select amount from payment
where amount not in (2.99,3.99,4.99);
select count(*) from payment
where amount in (0.99);
select * from customer
where first_name in('John','Jake','Linda');

select * from customer
where first_name like ('A%');
select * from customer
where first_name ilike ('all%');
select * from customer
where first_name like ('All__');
select * from customer
where first_name like ('A%') and last_name like ('%S');
select * from customer
where first_name like ('%her%');
select * from customer
where first_name not like ('%her%');
select * from customer
where last_name not like ('S%');

select count(*) from payment
where amount > 5.00;
select count(*) from actor
where first_name like ('P%');
select count(distinct(address_id)) from customer;
select count(distinct(address)) from address;
select distinct(address) from address;
select count(*) from film
where rating = 'R'
and replacement_cost between 5 and 15;
select * from film
where title ilike ('%Truman%');