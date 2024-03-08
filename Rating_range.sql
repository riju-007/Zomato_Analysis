use zomato;
alter table main
add column rating_range varchar(200);

update main
set rating_range =
case
when Rating between 0.1 and 1.0 then ('0-1')
when Rating between 1.1 and 2.0 then ('1-2')
when Rating between 2.1 and 3.0 then ('2-3')
when Rating between 3.1 and 4.0 then ('3-4')
when Rating between 4.1 and 5.0 then ('4-5')
else ('4-5')
end;

select * from main;