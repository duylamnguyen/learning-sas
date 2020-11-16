data month_sales;
	input	month sales @@;

	sum_sales + sales;
	
	format sales sum_sales dollar8.;
	
datalines;
1 4000 2 5000 3 . 4 5500 5 5000 6 6000 7 6500 8 4500
9 5100 10 5700 11 6500 12 7500
;
run;

title 'Sum of Sales';

proc print data=month_sales;
run;