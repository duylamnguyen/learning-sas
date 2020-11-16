title 'Mean Cholesterol by Sex';

proc sgplot data=sashelp.heart;
	vbar Sex / response=Cholesterol stat=mean;
run;