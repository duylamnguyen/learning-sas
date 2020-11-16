*
Program Name:
Purpose:
Programmer:
Date Written:
;

data geocaching;
	infile '/folders/myfolders/geocaching.txt';
	input	name	$	1-20
			longdeg		21-22
			longmin		23-28
			latdeg		29-30
			latmin		31-36;
run;

title 'Geocaching';

proc print data=geocaching;
run;
