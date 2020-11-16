libname mydata '/folders/myfolders/mydata';

title 'Demonstrating the Pctsum Stats';
proc tabulate data=mydata.sales;
	class region;
	var quantity totalsales;
	table (region all),
		 (quantity totalsales) * (pctsum*f=3.);
	keylabel pctsum='Percent of Total';
	label totalsales = 'Total Sales';
run;