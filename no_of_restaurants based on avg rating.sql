use zomato;
select rating_range, count(RestaurantID)
from main
group by rating_range
order by rating_range;