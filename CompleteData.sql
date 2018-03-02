CREATE TABLE coins (
id int(5),
volume_24h_usd float(20,2),
available_supply float(15,1),
coin_id varchar(255), 
last_updated_utc int(10), 
market_cap_usd float(15,2), 
max_supply float(20,2), 
coin_name varchar(255),
percent_change_1h float(5,2), 
percent_change_24h float(5,2), 
percent_change_7d float(5,2), 
price_vs_btc float(15,10), 
price_usd float(20,10), 
rank int(4), 
symbol varchar(10),
total_supply float(20,2),
primary key (id)
);

CREATE TABLE historical (
record_date date, 
open_usd float(15,10), 
high_usd float(15,10), 
low_usd float(15,10),
close_usd float(15,10),
volume float(15,2), 
market_cap_usd float(15,2), 
coin_id varchar(255),
id int(4),
primary key (id, record_date),
foreign key (id) references coins (id) 
)

#drop table historical;
#drop table snapshot;
select * from historical;
select * from coins;