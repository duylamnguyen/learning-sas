title 'Mean Height by Sex';

proc sgplot data=sashelp.heart;
	hbar Sex / response=Height stat=mean nofill barwidth=.25;
run;