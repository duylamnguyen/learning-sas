title 'Demonstating PBSPLINE Smoothing';
proc sgplot data=sashelp.heart;
	pbspline x=Height y=Weight;
run;