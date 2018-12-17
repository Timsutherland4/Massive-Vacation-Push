use sakila

-- 6a
select first_name, last_name, address
from staff s
inner join address a
on s.address_id = a.address_id;

-- 6b
select first_name, last_name, sum(amount) 
from staff s
inner join payment p
on s.staff_id = p.staff_id
group by p.staff_id
order by last_name asc;

-- 6c
 select title, count(actor_id)
 from film f
 inner join film_actor fa
 on f.film_id = fa.film_id
 group by title;
 
 -- 6d
 select title,count(inventory_id)
 from film f
 inner join inventory i
 on f.film_id = i.film_id
 where title = "Hunchback Impossible";
 
-- 6e
select first_name, last_name, sum(amount)
from payment p
inner join customer c
on p.customer_id = c.customer_id
group by p.customer_id
order by last_name asc;


 