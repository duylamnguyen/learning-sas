title 'Scatter Plot with Regression Line and Confidence Limits';

proc sgplot data=sashelp.heart;
	reg x=Height y=Weight / CLM CLI;
run;