data prob8;
	input day month year;
	date = mdy(month, day, year);
	format date mmddyy10.;
datalines;
25 12 2005
1    1   1960
21   10   1946
;
run;

title 'Problem 8';

proc print data=prob8;
run;