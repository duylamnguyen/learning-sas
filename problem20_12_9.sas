title 'Histogram for Cholesterol';
proc sgplot data=sashelp.heart;
	histogram Cholesterol;
run;