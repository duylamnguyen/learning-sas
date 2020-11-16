title 'Bar Chart for the Variable Status';

proc sgplot data=sashelp.heart;
	vbar Status;
run;