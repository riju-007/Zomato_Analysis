use zomato;
alter table main
add column usd_avg_cost_of_2 decimal(10,2);

update main
set usd_avg_cost_of_2 =
case
when Currency = 'Indian Rupees(Rs.)' then round((Average_Cost_for_two*0.012))
when Currency = 'Pounds(Œ£)' then round((Average_Cost_for_two*1.24))
when Currency = 'NewZealand($)' then round((Average_Cost_for_two*0.6))
when Currency = 'Emirati Diram(AED)' then round((Average_Cost_for_two*0.27))
when Currency = 'Brazilian Real(R$)' then round((Average_Cost_for_two*0.2))
when Currency = 'Turkish Lira(TL)' then round((Average_Cost_for_two*0.05))
when Currency = 'Qatari Rial(QR)' then round((Average_Cost_for_two*0.27))
when Currency = 'Rand(R)' then round((Average_Cost_for_two*0.051))
when Currency = 'Botswana Pula(P)' then round((Average_Cost_for_two*0.073))
when Currency = 'Sri Lankan Rupee(LKR)' then round((Average_Cost_for_two*0.0034))
when Currency = 'Indonesian Rupiah(IDR)' then round((Average_Cost_for_two*0.000067))
else round((Average_Cost_for_two*1))
end;

select * from main;