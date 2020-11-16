*
Program:
Purpose:
Programmer:
Date Written:
;

data geocaching;
	infile '/folders/myfolders/geocaching.txt';
	input	@1	name	$20.
			@21	longdeg	2.
			@23	longmin	6.
			@29	latdeg	2.
			@31	latmin	6.;
run;

title 'Geocaching';

proc print data=geocaching;
run;
