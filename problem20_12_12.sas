title 'Demonstrating Transparency and Bar Width';
proc sgplot data=sashelp.heart;
	vbar Sex / response=Height stat=mean;
	vbar Sex / response=Weight stat=mean barwidth=.25 transparency=.2;
run;