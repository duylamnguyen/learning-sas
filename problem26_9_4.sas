libname mydata '/folders/myfolders/mydata';

proc sql;
	create table new as
	select P.CustNumber, P.Model, P.Quantity, I.Price, I.Price * P.Quantity as Cost
	from mydata.inventory as I
	inner join mydata.purchase as P
	on I.Model = P.Model;
run;

title 'Listing of Table New';
proc print data=new noobs;
	format Cost dollar8.2;
run;