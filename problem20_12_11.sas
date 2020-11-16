title 'Horizontal Box Plots';
proc sgplot data=sashelp.heart;
	hbox Cholesterol / group=Sex;
run;