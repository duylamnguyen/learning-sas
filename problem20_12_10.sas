title 'Histogram with Density Plot';
proc sgplot data=sashelp.heart;
	histogram Cholesterol;
	density Cholesterol;
run;