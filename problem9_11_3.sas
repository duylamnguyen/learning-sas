data dates1910_2006;
	options yearcutoff=1910;
	input	year	mmddyy8.;
	format	year mmddyy10.;
datalines;
01/01/11
02/23/05
03/15/15
05/09/06
;
run;

title 'Dates 1910 - 2006';

proc print data=dates1910_2006;
run;