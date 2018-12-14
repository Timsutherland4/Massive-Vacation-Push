Use sakila;

-- 1a
select first_name, last_name from actor;

-- 1b
select concat(first_name, '  ', last_name) as Actor_Name from actor;