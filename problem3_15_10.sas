*
Program Name:
Purpose:
Programmer:
Date Written:
;

data stockprice;
	infile '/folders/myfolders/stockprices.txt';
	input	@1	stock		$4.
			@5	purdate		mmddyy10.
			@15	purprice	dollar6.2
			@21	number		4.
			@25	selldate	mmddyy10.
			@35	sellprice	dollar6.2;
	totalpur = number * purprice;
	totalsell = number * sellprice;
	profit = totalsell - totalpur;
	format	purdate		date9.
			purprice	dollar6.2
			selldate	date9.
			sellprice	dollar6.2
			totalpur	dollar15.2
			totalsell	dollar15.2
			profit		dollar15.2;
run;

title 'Stock Prices';

proc print data=stockprice;
run;