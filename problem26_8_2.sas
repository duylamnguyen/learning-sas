libname mydata '/folders/myfolders/mydata';

proc sql;
	create table Price20 as
	select *
	from mydata.inventory
	where price gt 20;
run;

title 'Listing of Table Inventory GT 20';
proc print data=Price20 noobs;
run;