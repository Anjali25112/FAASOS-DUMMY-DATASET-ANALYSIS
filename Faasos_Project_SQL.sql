use  faasos;
CREATE TABLE driver (
    driver_id INT,
    reg_date DATE
); 

INSERT INTO driver(driver_id, reg_date) 
VALUES (1, '2021-01-01'),
       (2, '2021-01-03'),
       (3, '2021-01-08'),
       (4, '2021-01-15');


DROP TABLE IF EXISTS ingredients;
CREATE TABLE ingredients (
    ingredients_id INT,
    ingredients_name VARCHAR(60)
); 

INSERT INTO ingredients(ingredients_id, ingredients_name) 
VALUES (1, 'BBQ Chicken'),
       (2, 'Chilli Sauce'),
       (3, 'Chicken'),
       (4, 'Cheese'),
       (5, 'Kebab'),
       (6, 'Mushrooms'),
       (7, 'Onions'),
       (8, 'Egg'),
       (9, 'Peppers'),
       (10, 'schezwan sauce'),
       (11, 'Tomatoes'),
       (12, 'Tomato Sauce');


DROP TABLE IF EXISTS rolls;
CREATE TABLE rolls (
    roll_id INT,
    roll_name VARCHAR(30)
); 

INSERT INTO rolls(roll_id, roll_name) 
VALUES (1, 'Non Veg Roll'),
       (2, 'Veg Roll');


DROP TABLE IF EXISTS rolls_recipes;
CREATE TABLE rolls_recipes (
    roll_id INT,
    ingredients VARCHAR(255)
); 

INSERT INTO rolls_recipes(roll_id, ingredients) 
VALUES (1, '1,2,3,4,5,6,8,10'),
       (2, '4,6,7,9,11,12');


DROP TABLE IF EXISTS driver_order;
CREATE TABLE driver_order (
    order_id INT,
    driver_id INT,
    pickup_time DATETIME,
    distance VARCHAR(10),
    duration VARCHAR(20),
    cancellation VARCHAR(50)
);

INSERT INTO driver_order(order_id, driver_id, pickup_time, distance, duration, cancellation) 
VALUES (1, 1, '2021-01-01 18:15:34', '20km', '32 minutes', ''),
       (2, 1, '2021-01-01 19:10:54', '20km', '27 minutes', ''),
       (3, 1, '2021-01-03 00:12:37', '13.4km', '20 mins', 'NaN'),
       (4, 2, '2021-01-04 13:53:03', '23.4', '40', 'NaN'),
       (5, 3, '2021-01-08 21:10:57', '10', '15', 'NaN'),
       (6, 3, NULL, NULL, NULL, 'Cancellation'),
       (7, 2, '2020-08-01 21:30:45', '25km', '25mins', NULL),
       (8, 2, '2020-10-01 00:15:02', '23.4 km', '15 minute', NULL),
       (9, 2, NULL, NULL, NULL, 'Customer Cancellation'),
       (10, 1, '2020-11-01 18:50:20', '10km', '10minutes', NULL);


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
    order_id INT,
    customer_id INT,
    roll_id INT,
    not_include_items VARCHAR(20),
    extra_items_included VARCHAR(20),
    order_date DATETIME
);

INSERT INTO customer_orders(order_id, customer_id, roll_id, not_include_items, extra_items_included, order_date)
VALUES (1, 101, 1, '', '', '2021-01-01 18:05:02'),
       (2, 101, 1, '', '', '2021-01-01 19:00:52'),
       (3, 102, 1, '', '', '2021-01-02 23:51:23'),
       (3, 102, 2, '', 'NaN', '2021-01-02 23:51:23'),
       (4, 103, 1, '4', '', '2021-01-04 13:23:46'),
       (4, 103, 1, '4', '', '2021-01-04 13:23:46'),
       (4, 103, 2, '4', '', '2021-01-04 13:23:46'),
       (5, 104, 1, NULL, '1', '2021-01-08 21:00:29'),
       (6, 101, 2, NULL, NULL, '2021-01-08 21:03:13'),
       (7, 105, 2, NULL, '1', '2021-01-08 21:20:29'),
       (8, 102, 1, NULL, NULL, '2021-01-09 23:54:33'),
       (9, 103, 1, '4', '1,5', '2021-01-10 11:22:59'),
       (10, 104, 1, NULL, NULL, '2021-01-11 18:34:49'),
       (10, 104, 1, '2,6', '1,4', '2021-01-11 18:34:49');


-- Select statements
SELECT * FROM customer_orders;
SELECT * FROM driver_order;
SELECT * FROM ingredients;
SELECT * FROM rolls;
SELECT * FROM rolls_recipes;

-- A.roll metrics
--  1.How many rolls were ordered?
select count(roll_id) from customer_orders;
--  2. How many unique customers were made ?
select count(distinct customer_id) from customer_orders; 
-- 3. How many successfull orders were delivered by each driver?
select count(order_id) as "number of successfull orders", driver_id from driver_order where 
cancellation not in ("Cancellation","Customer Cancellation")
group by driver_id;
-- 4.How many of each type of roll was delivered?
select count(order_id) as "number of rolls",roll_id from customer_orders
group by roll_id;
-- but its wrong since data is messy and we want to know the how many of each type 
-- of roll was DELIVERED, some were cancelled as well as we need to eliminate those
select roll_id,count(order_id) from customer_orders where order_id in (
select order_id from (select *, case when cancellation in ("Cancellation","Customer Cancellation") then "c" else "nc" 
end as order_detailss from driver_order) a where order_detailss="nc"
)
group by roll_id;

-- 5 how many veg and non veg rolls were ordered by each customers 
select customer_id,roll_id,count(roll_id) from customer_orders
group by roll_id,customer_id;

-- 6 What was the maximum number of rolls delivered in a single unit? so its a delivery information so we will use the driver table 
-- since that is where the delivered or not delivered info lies 
 select order_id,count(order_id) as counta from customer_orders where order_id in (select order_id from (select *, case when cancellation in ("Cancellation","Customer Cancellation") then "c" else "nc" 
end as order_detailss from driver_order) a where order_detailss="nc"
) 
group by order_id
order by counta desc
limit 2
;
-- 7 For each customer, how many delivered rolls had at least 1 change and how many had no changes
-- DATA CLEANING IS REQUIRED NOW , TO MAKE IT EASY FOR US TO CODE 
-- so we create a temporary table for customer orders and driver orders and later we will use these inplace of the 
-- earlier tables
 -- using CTE 
 -- replacing all the null,nan, and empty spaces to 0 , meaning not include item 0 and extra items included 0 
 with 
  temp_customer_orders (order_id, customer_id,roll_id,new_not_include_items,new_extra_items_included,order_date) as
 ( select  order_id,customer_id,roll_id, case when not_include_items is null or not_include_items=''or  not_include_items ="NaN"  then 0 else 
 not_include_items end as new_not_include_items , case when extra_items_included is null or extra_items_included='' or 
 extra_items_included ="NaN"  then 0 else 
 extra_items_included end as new_extra_items_included, order_date from customer_orders
 ),
  temp_driver_orders (order_id, driver_id,pickup_time,distance,duration,new_cancellation_info,order_details) as 
 (select order_id, driver_id,pickup_time,distance,duration,case when cancellation in ("Cancellation","Customer Cancellation,NaN") then 0 
 else 1 end as new_cancellation_info,order_details from driver_order)
 -- now coming back to the original question how many how many delivered rolls had 
 -- at least 1 change and how many had no changes
 select count(status), customer_id,status from (select *, case when new_extra_items_included and  new_not_include_items =0 then "no change" else "change" end as "status" from temp_customer_orders
 where order_id in (select order_id from temp_driver_orders where new_cancellation_info!=0) ) a
 group by customer_id,status;
 
 -- 8 How many rolls were delivered that had both exclusions and extras ?
 -- same as above , with a lil change 
 with 
  temp_customer_orders (order_id, customer_id,roll_id,new_not_include_items,new_extra_items_included,order_date) as
 ( select  order_id,customer_id,roll_id, case when not_include_items is null or not_include_items=''or  not_include_items ="NaN"  then 0 else 
 not_include_items end as new_not_include_items , case when extra_items_included is null or extra_items_included='' or 
 extra_items_included ="NaN"  then 0 else 
 extra_items_included end as new_extra_items_included, order_date from customer_orders
 ),
  temp_driver_orders (order_id, driver_id,pickup_time,distance,duration,new_cancellation_info,order_details) as 
 (select order_id, driver_id,pickup_time,distance,duration,case when cancellation in ("Cancellation","Customer Cancellation,NaN") then 0 
 else 1 end as new_cancellation_info,order_details from driver_order)
 -- now coming back to the original question how many how many delivered rolls had 
 -- at least 1 change and how many had no changes
 select count(status),status from (select *, case when new_extra_items_included and  new_not_include_items !=0 then "both included and excluded" 
 else "either 1 exc or included" end as "status" from temp_customer_orders
 where order_id in (select order_id from temp_driver_orders where new_cancellation_info!=0) ) a
 group by status;
 
 -- What was the total number of rolls ordered for each hour of the day ? (ordered not delivered)
 select * from customer_orders;
 -- so we need place all these orders into a bracket and then later we will group by 
 -- most active time 
 select hour_bracket, count(hour_bracket) from (select *,concat(cast(hour(order_date) as char) , '-',cast(hour(order_date)+1 as char)) as hour_bracket
 from customer_orders) a 
 group by hour_bracket
 order by hour_bracket;
 -- sabse zyada order 1-2 pm, 6-7 pm, 9-10 aur 10-11 ke bich hai 
 
 -- 10 what was the number of orders for each day of the week ?
 select dayy, count(distinct order_id) from (select *,weekday(order_date) as dayy from customer_orders ) a
 group by dayy;
 -- therefore, fridays maximun customers are ordering from faasos
 
 -- B. DRIVER AND CUSTOMER EXPERIENCE 
 
 -- 1 What was the average time in minutes it took for driver to reach faasos HQ to pickup the order?
 select * from driver_order;-- pickup time, the time driver is going to pick up the order 
 select * from customer_orders; -- so in this we have order date with details of the time order is placed
 select avg(diff) from (select   timestampdiff(minute,c.order_date,d.pickup_time) as diff from customer_orders c
 join driver_order d  on d.order_id=c.order_id -- as you can see some values are null in pick up time so those items were not picked up maybe due to cancellation 
 where d.pickup_time is not null ) f
 where f.diff>0;
 -- so the avg time it takes for driver to pick up is 19.8750 minutes 
 -- i want to know avg time for each driver id so that the one taking more time can identified
 select driver_id,sum(diff)* 1.0/count(order_id) avg_mins from
 (select * from (select *, row_number() over (partition by order_id order by diff) rnk from 
 (select  a.order_id,a.customer_id,a.roll_id,a.not_include_items,a.extra_items_included,a.order_date,
 b.driver_id ,b.pickup_time, b.distance,b.duration,b.cancellation, timestampdiff(minute,a.order_date,b.pickup_time) diff 
 from customer_orders a inner join driver_order b on a.order_id=b.order_id 
 where b.pickup_time is not null and pickup_time>0) a )b where rnk=1) c
 group by driver_id;
 
 
-- is there any relationship between the number of rolls and how long the order takes to prepare 



 
 
  
 
 
 
 





