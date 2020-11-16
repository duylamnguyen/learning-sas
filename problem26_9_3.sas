libname mydata '/folders/myfolders/mydata';

proc sql;
	create table N_sales as
	select Name, TotalSales
	from mydata.sales
	where region eq 'North';
run;

title 'Listing of N_Sales';
proc print data=N_Sales noobs;
run;