data prob10;
	do day = 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun';
		input temp @;
		output;
	end;
datalines;
70 72 74 76 77 78 85
;
run;

title 'Temp of a Week';

proc print data=prob10;
run;