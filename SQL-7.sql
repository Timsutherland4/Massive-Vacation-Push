use sakila

-- 7a
select title from film
where language_id in
		(select language_id
        from language
        where name = "English")
        and (title like "K%") or (title like "Q%");
        
-- 7b
select last_name, first_name
from actor
where actor_id in
			(select actor_id from film_actor
            where film_id in
				(select film_id from film
                where title = "Alone Trip"));
                
-- 7c

SELECT country, c.first_name, c.last_name, c.email
FROM customer c INNER JOIN address a 
	ON c.address_id = a.address_id
	INNER JOIN city ci 
    ON a.city_id = ci.city_id
    INNER JOIN country co 
    ON ci.country_id = co.country_id
WHERE co.country = 'Canada';

-- 7d

select title, category
from film_list
where category = "Family";

-- 7e
select i.film_id, f.title, count(r.return_date)
from inventory i 
inner join rental r 
on i.inventory_id = r.inventory_id
inner join film_text f 
on i.film_id = f.film_id
group by r.inventory_id
order by count(r.return_date) desc;

-- 7f
select store.store_id, sum(amount)
from store 
inner join staff 
on store.store_id = staff.store_id
inner join payment p
on p.staff_id = staff.staff_id
group by store.store_id
order by sum(amount);

-- 7g
use sakila

select s.store_id, city, country 
from store s
inner join customer cu
on s.store_id = cu.store_id
inner join staff st 
on s.store_id = st.store_id
inner join address a
on cu.address_id = a.address_id
inner join  city ci 
on a.city_id = ci.city_id
inner join country coun  
on ci.country_id = coun.country_id;

-- 7h
select c.name as "Genre", SUM(p.amount)
from category c 
INNER JOIN film_category fc 
on c.category_id = fc.category_id
inner join film f 
on fc.film_id = f.film_id
inner join inventory i 
on f.film_id = i.film_id
inner join rental r 
on i.inventory_id = r.inventory_id
inner join payment p 
on r.rental_id = p.rental_id
group by 1
order by 2 desc
limit 5;











 

               