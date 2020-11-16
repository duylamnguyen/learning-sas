libname mydata '/folders/myfolders/mydata';

data Bicycles;
	set mydata.bicycles;
run;

data Markup;
	input	Manuf	:	$10.
			Markup		;
datalines;
Cannodale 1.05
Trek 1.07
;
run;

data Markup_Prices;
	merge Bicycles Markup;
	by Manuf;
	NewTotal = Markup * TotalSales;
	format NewTotal dollar8.;
run;

title 'Listing of Markup_Prices';
proc print data=Markup_Prices;
run;