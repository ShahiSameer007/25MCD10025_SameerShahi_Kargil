-- Step 2: Filtering Data Using Conditions
select * from orders
where price > 40000;

-- Step 3: Sorting Query Results
select * from orders
order by price asc;

-- sorting descending
select * from orders
order by price desc;

-- multiple column sorting
select * from orders
order by product asc, price desc;

-- Step 4: Grouping Data for Aggregation
select product, sum(price) as total_sales
from orders
group by product;

-- average price per product
select product, avg(price) as avg_price
from orders
group by product;

-- count orders per product
select product, count(*) as total_orders
from orders
group by product;

-- Step 5: Applying Conditions on Aggregated Data
select product, sum(price) as total_sales
from orders
group by product
having sum(price) > 50000;

-- Step 6: Conceptual Understanding of Filtering vs Aggregation Conditions
-- Incorrect: condition applied before grouping (using where)
select product, sum(price) as total_sales
from orders
where price > 20000
group by product;

-- Correct: condition applied after grouping (using having)
select product, sum(price) as total_sales
from orders
where price > 20000
group by product
having sum(price) > 50000;
