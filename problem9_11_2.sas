data three_dates;
	input	@1 	date1 mmddyy10.
			@12 date2 mmddyy10. 
			@23	date3 date9.;
	year12 = round(yrdif(date1, date2));
	year23 = round(yrdif(date2, date3));
	format 	date1 date2 date3 mmddyy10.;
datalines;
01/03/1950 01/03/1960 03Jan1970
05/15/2000 05/15/2002 15May2003
10/10/1998 11/12/2000 25Dec2005
;
run;

title 'Listing of Three Dates';

proc print data=three_dates;
run;