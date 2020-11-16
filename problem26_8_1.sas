libname mydata '/folders/myfolders/mydata';

title 'Listing of Data Set Inventory';
proc sql;
	select *
	from mydata.inventory
	where price gt 20;
run;