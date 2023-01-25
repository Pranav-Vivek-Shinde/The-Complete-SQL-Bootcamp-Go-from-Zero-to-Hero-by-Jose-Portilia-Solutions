select customer_id as cid from payment;
select amount as rental_price from payment;
select sum(amount) as net_revenue from payment;
select count(amount) as no_transactions from payment;

select customer_id,sum(amount) as total_spend from payment
group by customer_id;

select customer_id,sum(amount) as total_spend from payment
group by customer_id
having sum(amount) >100;

select payment_id,payment.customer_id,first_name 
from customer 
inner join payment 
on customer.customer_id = payment.customer_id;

select * from payment
full outer join customer
on payment.customer_id=customer.customer_id
where customer.customer_id is null 
or payment.payment_id is null;

select film.film_id,title,inventory_id,store_id from film
left outer join inventory
on inventory.film_id= film.film_id;

select film.film_id,title,inventory_id,store_id from film
left outer join inventory
on inventory.film_id= film.film_id
where inventory.film_id is null;

select email,district from customer
inner join address
on address.address_id=customer.address_id
where district='California';

select film.film_id,title,first_name,last_name from film_actor
inner join film
on film_actor.film_id=film.film_id
inner join actor
on film_actor.actor_id=actor.actor_id
where first_name='Nick' and last_name='Wahlberg'
order by film_actor.film_id
limit 25;

