select min(replacement_cost) from film;
select max(replacement_cost) from film;
select max(replacement_cost),avg(replacement_cost) from film;
select count(*) from film;
select round(avg(replacement_cost),3) from film;
select sum(replacement_cost) from film;


select * from payment;

select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount) desc;
select customer_id,count(amount) from payment
group by customer_id
order by count(amount) desc;
select staff_id,customer_id,sum(amount) from payment
group by staff_id,customer_id
order by staff_id,customer_id;
select date(payment_date),sum(amount) from payment
group by date(payment_date)
order by date(payment_date) desc,sum(amount) desc;


select staff_id,count(amount) from payment
group by staff_id
order by count(amount) desc;

select rating , avg(replacement_cost) from film
group by rating
order by avg(replacement_cost);

select customer_id , sum(amount) from payment
group by customer_id
order by sum(amount) desc
limit 5;

select customer_id,sum(amount) from payment
where customer_id not in (184,185)
group by customer_id
having sum(amount)>100
order by sum(amount) desc;


select store_id ,count(customer_id) from customer
group by store_id
having count(customer_id)>300
order by count(customer_id) desc;

select customer_id ,count(amount) from payment
group by customer_id
having count(amount)>=40
order by count(amount) desc;

select customer_id , sum(amount) from payment
where staff_id = 2
group by customer_id
having sum(amount)>=100
order by customer_id asc;

select customer_id ,sum(amount) from payment
where staff_id = 2
group by customer_id
having sum(amount)>=110
order by customer_id;

select count(title) from film
where title ilike ('j%');

select customer_id ,address_id, first_name , last_name from customer
where first_name like('E%') 
and address_id <=500
order by customer_id desc
limit 1;

