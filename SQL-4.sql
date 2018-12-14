use sakila

-- 4a
select last_name, count(last_name) as "Count of Last Name"
from actor
group by last_name;

-- 4b
 select last_name, count(last_name) as "Count of Last Name"
from actor
group by last_name
having count(last_name) >=2;

-- 4c
update actor
set first_name = 'HARPO'
where first_name = 'GROUCHO' and last_name = 'WILLIAMS';

-- 4d
-- select*from actor
update actor
set first_name = 
case
when first_name = 'HARPO'
then 'GROUCHO'
else 'MUCHO GROUCHO'
end
where actor_id = 172;
