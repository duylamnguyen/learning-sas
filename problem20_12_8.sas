title 'Demostrating LOESS Smoothing';
proc sgplot data=sashelp.heart (obs=100);
	loess x=Height y=Weight;
run;