title 'Scatter Plot of Weight by Height';

proc sgplot data=sashelp.heart;
	scatter x=Height y=Weight;
run;