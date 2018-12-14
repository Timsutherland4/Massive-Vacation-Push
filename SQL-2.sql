use sakila;

-- 1a
select actor_id, first_name, last_name
from actor
where first_name = 'Joe';

-- 2b
select last_name
from actor
where last_name like '%GEN%';

-- 2c
select last_name, first_name
from actor
where last_name like '%LI%'
order by last_name, first_name

-- 2d
select country_id, country
from country
where country in ('Afghanistan', 'Bangladesh', 'China');

