*
Program Name:
Purpose:
Stored in:
Programmer:
Date Written:
;
libname mydata '/folders/myfolders/mydata';

data mydata.sales;
	set work.sales;
run;

data sales_new;
	set sales;
	select;
		when (missing(region)) weight = .;
		when (region eq 'North') weight = 1.5;
		when (region eq 'South') weight = 1.7;
		when (region in ('West', 'East')) weight = 2.0;
		otherwise;
	end;
run;

title 'Listing of Sales New';

proc print data=sales_new;
	var Region TotalSales weight;
run;