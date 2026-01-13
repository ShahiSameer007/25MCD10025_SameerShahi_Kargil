-- All Toppers(percentage>95) in each city without using case statement
select city,count(studID) as topper_count 
from students 
where percentage>95
group by city;

-- All Toppers(percentage>95) in each city with case statement
select city,sum(case when percentage>95	then 1 else 0 end) 
from students
group by city;

-- Average percentage of toppers city-wise
select city, avg(case when percentage > 95 then percentage else NULL end) 
as average_toppers
from students
group by city
order by average_toppers desc;