*
program name:
purpose:
programmer:
date written:
;

data prob5;
	input x y;
	z = 100 + 2 * x**2 - 25 * y + y**2;
	datalines;
	1 2
	3 6
	5 9
	9 11
	;
run;

title 'Prob5';

proc print data=prob5;
run;