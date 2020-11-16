data prob9;
	input day month year;
	if missing(day) then date = mdy(month, 15, year);
	else date = mdy(month, day, year);
	format date mmddyy10.;
datalines;
25 12 2005
.  5  2002
12 8     2006
;
run;

title 'Problem 9';

proc print data=prob9;
run;
