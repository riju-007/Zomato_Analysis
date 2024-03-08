use zomato;
select Has_Online_delivery, 
count(Has_Online_delivery) as total,
CONCAT(ROUND((COUNT(Has_Online_delivery) / (SELECT COUNT(Has_Online_delivery) FROM main)) * 100, 2), '%') AS percentage
from main
group by Has_Online_delivery;