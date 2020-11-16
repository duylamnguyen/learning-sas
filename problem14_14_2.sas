libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.sales;
	by Region;
run;

title 'Sales Figures from the Sales Data Set';
proc print data=mydata.sales noobs label;
	by Region;
	id Region;
	var Quantity TotalSales;
	sum Quantity TotalSales;
	label	Quantity = 'Quantity (unit)'
			TotalSales = 'Total Sales ($)';
	format	Quantity comma7.
			TotalSales dollar10.2;
run;