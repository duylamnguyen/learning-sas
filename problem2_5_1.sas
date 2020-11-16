*Program name: problem2_5_1.sas stored in /folders/myfolders/

Purpose: The program reads in data on stock symbol, price, number of shares and
compute value, the average price and the average number of shares of your stocks.

Programmer: Duy Nguyen
Date Written: 2020-10-16;

ODS NOPROCTITLE;

data Portfolio;
	infile '/folders/myfolders/Stocks.txt';
	input stock_symbol $ price num_of_shares;
	*compute value, average price and the average number of shares;
	value=price * num_of_shares;
run;

title 'My Portfolio';

proc print data=Portfolio;
run;

title 'My Portfolio - Average';

proc means data=Portfolio n mean sum maxdec=0;
	var price num_of_shares;
run;