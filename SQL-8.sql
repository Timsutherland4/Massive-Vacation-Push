use Sakila

-- 8a
create view top_five_revenue_generating_genres as 
	select c.name as "Genre", sum(p.amount)
	from category c 
	inner join film_category fc 
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
    
 -- 8b
 select *
 from top_five_revenue_generating_genres;
 
 -- 8c
 drop view top_five_revenue_generating_genres;
 
 -- drop view Top_Five_Grossing_Genres
 

 