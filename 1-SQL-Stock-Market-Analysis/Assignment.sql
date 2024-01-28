# A new schema named 'assignment' has been created under the schemas section
# Importing the bajaj auto table from the csv
SET SQL_SAFE_UPDATES = 0;
create table assignment.bajaj_auto(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv' INTO TABLE assignment.bajaj_auto
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.bajaj_auto
add column date_format date;

update  assignment.bajaj_auto
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

#Replicate the above importing for the other stock csv's
# Importing the Eicher Motors table
create table assignment.eicher_motors(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv' INTO TABLE assignment.eicher_motors
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.eicher_motors
add column date_format date;

update  assignment.eicher_motors
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

# Importing the Hero Motocorp table
create table assignment.hero_motocorp(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv' INTO TABLE assignment.hero_motocorp
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.hero_motocorp
add column date_format date;

update  assignment.hero_motocorp
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

# Importing the Infosys table
create table assignment.infosys(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv' INTO TABLE assignment.infosys
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.infosys
add column date_format date;

update  assignment.infosys
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

# Importing the TCS table
create table assignment.tcs(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TCS.csv' INTO TABLE assignment.tcs
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.tcs
add column date_format date;

update  assignment.tcs
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

# Importing the TVS Motors table
create table assignment.tvs_motors(
dt text,
open_price double,
high_price double,
low_price double,
close_price double,
wap double,
no_of_shares double,
no_of_trades double,
total_turnover_rs double,
deliverable_quantity varchar(20),
perc_delivqty_to_tradeqty varchar(20),
spread_high_low double,
spread_close_open double);

#Load the data from the folder where the file was stored in. The folder path location is the one used within the MySQL database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv' INTO TABLE assignment.tvs_motors
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Since the date column has been imported as text, creating a new column that will hold the date values in the actual date format
alter table assignment.tvs_motors
add column date_format date;

update  assignment.tvs_motors
SET date_format = DATE_FORMAT(STR_TO_DATE(dt, '%d-%M-%Y'), '%Y-%m-%d');

# Check that the data is being captured for each of the loaded tables in the expected format
select * from assignment.bajaj_auto limit 10;
select * from assignment.eicher_motors limit 10;
select * from assignment.hero_motocorp limit 10;
select * from assignment.infosys limit 10;
select * from assignment.tcs limit 10;
select * from assignment.tvs_motors limit 10;

# Check that the data has been loaded in its entirety 
select count(*) from assignment.bajaj_auto limit 10;
select count(*) from assignment.eicher_motors limit 10;
select count(*) from assignment.hero_motocorp limit 10;
select count(*) from assignment.infosys limit 10;
select count(*) from assignment.tcs limit 10;
select count(*) from assignment.tvs_motors limit 10;

# Result 1: Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)
# Bajaj Auto Moving Average

# Using the nested query approach here. Within the subquery inside the from statement, we're calculating the respective moving average along <%>
# with the rownumber. Finally replacing the row numbers <20 with Null for 20day MA and rownum <50 with Null for 50day MA
create table assignment.bajaj1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.bajaj_auto) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.bajaj1;

#Replicate the above method of calculating the moving averages for each of the stock
# Eichen Motors Moving Average
create table assignment.eicher1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.eicher_motors) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.eicher1;

# Hero Motocorp Moving Average
create table assignment.hero1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.hero_motocorp) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.hero1;

# Infosys Moving Average
create table assignment.infosys1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.infosys) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.infosys1;

# TCS Moving Average
create table assignment.tcs1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.tcs) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.tcs1;

# TVS Motors Moving Average
create table assignment.tvs1 as
select  date_format as 'Date', close_price as 'Close Price', 
		case when rownum<20 then null else 20day_ma end as '20 Day MA', 
		case when rownum<50 then null else 50day_ma end as '50 Day MA'
from
(select date_format, close_price, 
		row_number() over (order by date_format asc) as rownum,
	   avg(close_price) over (order by date_format asc rows 19 preceding) as 20day_ma,
	   avg(close_price) over (order by date_format asc rows 49 preceding) as 50day_ma
from assignment.tvs_motors) a
order by date_format;

# Check that the moving averages are computed accordingly
select * from assignment.tvs1;

# Result 2: Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
# Performing a join operation on all of the imported tables at a date level to create the master table 
create table assignment.master_table as
select a.date_format as 'Date', a.close_price as 'Bajaj', b.close_price as 'TCS', c.close_price as 'TVS', d.close_price as 'Infosys',
	   e.close_price as 'Eicher', f.close_price as 'Hero'
from assignment.bajaj_auto a
join assignment.tcs b
on a.date_format=b.date_format
join assignment.tvs_motors c
on a.date_format=c.date_format
join assignment.infosys d
on a.date_format=d.date_format
join assignment.eicher_motors e
on a.date_format=e.date_format
join assignment.hero_motocorp f
on a.date_format=f.date_format
order by a.date_format asc;

# Check that the master table created is as expected
select * from assignment.master_table;

# Result 3: Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.

# Bajaj Signal Result

# Using the nested query approach. The first subquery contains a flag for when 20 Day MA is greater than or less than the 50 day MA. <%>
# Next, the lag function is used which offsets the flag column by 1 so that the current day flag and previous day flag are in the same row to allow for comparison. <%>
# Finally, the current day flag and the previous day flag is compared to identify whether the signal should be Buy/Sell/Hold
create table assignment.bajaj2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then NULL
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.bajaj1) a
)b;

# Replicate the above procedure for each of the stock to generate a signal
# TCS Signal Result
create table assignment.tcs2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then null
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.tcs1) a
)b;

#TVS Signal Result
create table assignment.tvs2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then null
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.tvs1) a
)b;

#Infosys Signal Result
create table assignment.infosys2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then null
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.infosys1) a
)b;

#Eicher Signal Result
create table assignment.eicher2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then null
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.eicher1) a
)b;

#Hero Signal Result
create table assignment.hero2 as
select `Date`, `Close Price`, 
	    case when `50 Day MA` is null then null
			 when signal1=cross_type then 'Hold'
             when signal1<>cross_type and cross_type='Golden Cross' then 'Buy'
             else 'Sell' end as `Signal`
from(             
select `Date`, `Close Price`, `20 Day MA`,`50 Day MA`, cross_type, LAG(cross_type,1) over (order by `Date`) as signal1
from(
select `Date`, `Close Price`, `20 Day MA`, `50 Day MA`,
		case when `20 Day MA`>`50 Day MA` and `50 Day MA`<>''  then 'Golden Cross' 
             when `20 Day MA`<`50 Day MA` and `50 Day MA`<>''  then 'Death Cross' 
             else '' end as cross_type
from assignment.hero1) a
)b;

#Check that all the new tables have the signals as per the algorithm defined
select * from assignment.bajaj2;
select * from assignment.eicher2;
select * from assignment.hero2;
select * from assignment.infosys2;
select * from assignment.tcs2;
select * from assignment.tvs2;

# Result 4: Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
DELIMITER $$
create function bajaj_signal (dt date)
returns varchar(4)
deterministic
begin
	return (
	select `Signal` from assignment.bajaj2
	where `Date`= dt);
end
$$
DELIMITER ;

# Test the above created UDF with a randome date to get the signal from the bajaj2 table
select bajaj_signal('2015-05-18');
