use zomato;
select price_bucket, count(RestaurantID) as total_restaurants
from main
group by price_bucket
order by price_bucket;