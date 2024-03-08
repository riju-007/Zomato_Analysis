use zomato;
select country.Countryname, main.City, count(main.RestaurantID) as number_of_restaurants
from main
left join country on main.CountryCode=country.CountryID
group by country.Countryname, main.City;