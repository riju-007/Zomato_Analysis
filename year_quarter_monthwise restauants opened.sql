use zomato;
select year(datekey_opening) as year,
concat('Q',quarter(datekey_opening)) as quarter,
monthname(datekey_opening) as month,
count(RestaurantID) as restaurants_opened
from main
group by year(datekey_opening),
concat('Q',quarter(datekey_opening)),
monthname(datekey_opening)
order by year(datekey_opening),
concat('Q',quarter(datekey_opening)),
monthname(datekey_opening);
