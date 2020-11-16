libname mydata '/folders/myfolders/mydata';

data Sales;
	set mydata.sales;
run;

proc sort data=Sales;
	by Date;
run;

title 'Series Plot of Sales by Date';
proc sgplot data=Sales;
	series x=Date y=TotalSales;
run;