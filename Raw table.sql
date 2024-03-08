create database zomato;
use zomato;
create table main(
RestaurantID int primary key,
RestaurantName varchar(255),
CountryCode int,
City varchar(255),
Address varchar(255),
Locality varchar(255),
LocalityVerbose varchar(255),
Longitude double(15,11),
Latitude double(15,11),
Cuisines varchar(255),
Currency varchar(255),
Has_Table_booking varchar(255),
Has_Online_delivery varchar(255),
Is_delivering_now varchar(255),
Switch_to_order_menu varchar(255),
Price_range int,
Votes int,
Average_Cost_for_two int,
Rating float,
Datekey_Opening varchar(255)
);


create table country(
CountryID int primary key,
Countryname varchar(255)
);




