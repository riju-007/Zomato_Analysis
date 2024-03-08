update main set datekey_opening=replace(datekey_opening,"_","/") where datekey_opening like '%_%';
alter table main modify column Datekey_Opening date;