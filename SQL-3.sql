use sakila

-- 3a
alter table actor
add actor_description varchar(45);

-- this code errors out, I think I still have a lock that prevents me from changing databases- will look into on Saturday

alter table actor
modify actor_description BLOB;

-- 3b
alter table actor
drop actor_description

-- print results:

select*from actor;
