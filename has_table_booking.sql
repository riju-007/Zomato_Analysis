use zomato;
select Has_Table_booking, 
count(Has_Table_booking) as total,
CONCAT(ROUND((COUNT(Has_Table_booking) / (SELECT COUNT(Has_Table_booking) FROM main)) * 100, 2), '%') AS percentage
from main
group by Has_Table_booking;

