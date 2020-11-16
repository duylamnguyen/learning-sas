data plotit;
	do x = 0 to 10 by 0.10;
		y = 3 * x**2 - 5 * x + 10;
		output;
	end;
run;

title 'Problem 7';

proc sgplot data=plotit;
	series x=x y=y;
run;