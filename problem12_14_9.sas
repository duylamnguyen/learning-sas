libname mydata '/folders/myfolders/mydata';

data sales;
	set mydata.sales;
	where find(Customer, 'spirit', 'i');
run;

title 'Listing of Sales Dataset';
proc print data=sales;
run;