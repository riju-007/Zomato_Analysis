use zomato;
alter table main add constraint fk1 foreign key main(countrycode) references country(countryid);