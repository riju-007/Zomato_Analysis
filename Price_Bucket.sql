use zomato;
alter table main
add column price_bucket varchar(255);

update main
set price_bucket =
case
when usd_avg_cost_of_2 between 0.01 and 10.00 then ("0 to 10")
when usd_avg_cost_of_2 between 10.01 and 20.00 then ("10 to 20")
when usd_avg_cost_of_2 between 20.01 and 30.00 then ("20 to 30")
when usd_avg_cost_of_2 between 30.01 and 40.00 then ("30 to 40")
when usd_avg_cost_of_2 between 40.01 and 50.00 then ("40 to 50")
else ("above 50")
end;

select * from main;